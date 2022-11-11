//
//  SubscribeListViewController.swift
//  iOS_Velog
//
//  Created by 홍준혁 on 2022/10/26.
//

import UIKit
import SnapKit
import Then
import RealmSwift
import Realm

class SubscribeListViewController: UIViewController {
    
    var realm = try! Realm()
    
    
    // for 더미 데이터
//    var data = [CustomCellModel]()

    // velog 사용자 아이디만 가져온 list
    var subScribeList = [String]()
    
    let titleLabel = UILabel().then {
        $0.text = "Subscribe List"
        $0.font = UIFont(name: "Avenir-Black", size: 40)
    }
    
    // 구독 검색 버튼
    let addButton = UIButton().then{
        $0.backgroundColor = .systemBackground
        $0.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        $0.addTarget(self, action: #selector(addSubscribe), for: .touchUpInside)
    }
    
    // 구독 리스트 tableView
    let tableViewForSubscribeList :UITableView = {
        let tableview = UITableView()
        return tableview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.tintColor = .black  // navigation back btn color change
    
        
        resetSubScribeList()
        
        tableViewForSubscribeList.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        tableViewForSubscribeList.delegate = self
        tableViewForSubscribeList.dataSource = self
        
        // Do any additional setup after loading the view.
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        resetSubScribeList()
        
    }

    // 구독 서치에서 추가된 경우 Realm을 다시 서치한다.
    func resetSubScribeList(){
        for item in realm.objects(Subscriber.self){
            self.subScribeList.append(item.velogId)
        }
        tableViewForSubscribeList.reloadData()
    }
    
    func setUI(){
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        view.addSubview(tableViewForSubscribeList)

        titleLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(100)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-50)
        }
        
        addButton.snp.makeConstraints{

            $0.centerY.equalTo(titleLabel)
            $0.trailing.equalToSuperview().offset(-40)
        }
        

        tableViewForSubscribeList.snp.makeConstraints{
            $0.top.equalTo(addButton.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.bottom.equalToSuperview().offset(-90)
        }
        

        
    }
 
    @objc func addSubscribe(){
        print("pushView")
        let nextVC = SearchSubscribeViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    // 일단 여긴 보류 - 아직 로컬db 데어터 삭제 불가
    @objc func deleteBtnAction(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: tableViewForSubscribeList)
        guard let indexPath = tableViewForSubscribeList.indexPathForRow(at: point) else { return }
        let person = subScribeList[indexPath.row]
        subScribeList.remove(at: indexPath.row)   // 일단 보류
        tableViewForSubscribeList.deleteRows(at: [indexPath], with: .automatic)
        print(type(of: person)) // String
//        let subscribeToDelete = Subscriber(velogId: person)
//        realm.delete(subscribeToDelete)

    }

    
    
    


}


extension SubscribeListViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count // 더미 데이터 코드
        return (subScribeList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier) as? CustomCell ?? CustomCell()
        cell.bind(model: subScribeList[indexPath.row])
        cell.rightButton.addTarget(self, action: #selector(deleteBtnAction), for: .touchUpInside)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
