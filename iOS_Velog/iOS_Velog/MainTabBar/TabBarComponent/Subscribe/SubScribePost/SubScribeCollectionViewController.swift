//
//  SubScribeCollectionViewController.swift
//  iOS_Velog
//
//  Created by 홍준혁 on 2022/11/22.
//

import UIKit
import SnapKit
import Then
import Moya





class SubScribeCollectionViewController: UIViewController {

    private let provider = MoyaProvider<SubscriberService>()

    let PostVC = PostWebViewController()
    
    // 구독 리스트 tableView
    let tableViewForPosts :UITableView = {
        let tableview = UITableView()
//        tableview.backgroundColor = .red
        return tableview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        tableViewForPosts.register(PostCell.self, forCellReuseIdentifier: PostCell.identifier)
        tableViewForPosts.delegate = self
        tableViewForPosts.dataSource = self
//        getPostDataServer()
        setUI()
        print(PostData.Post.subscribePostDtoList)
    }
    
    func setUI(){
        view.addSubview(tableViewForPosts)
        
        tableViewForPosts.snp.makeConstraints {
            $0.top.equalToSuperview().offset(250)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.bottom.equalToSuperview().offset(-90)
        }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        self.getServer()
//        self.getPostDataServer() // 아직 사용하지 않는다
        tableViewForPosts.reloadData()
    }
    
    func getPostDataServer(){
        self.provider.request(.subscriberpost){ response in
            switch response{
            case .success(let moyaResponse):
                do{
                    print("getPost")
                    print(moyaResponse.statusCode)
                    PostData.Post = try moyaResponse.map(PostList.self)
                    print("성공")
                }catch(let err){
                    print(err.localizedDescription)
                    print("맵핑 안됨")
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

    
    func getServer(){
        self.provider.request(.getSubscriber){response in
            switch response{
            case .success(let moyaResponse):
                do{
                    print(moyaResponse.statusCode)
                    userList.List = try moyaResponse.mapJSON() as! [String]
//                     이거 임시!!!
                    NotificationList.notificationList = try moyaResponse.mapJSON() as! [String]
                    print(userList.List)
                    
                }catch(let err) {
                    print(err.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    // webView 푸시
    func pushWebView(){
        print("finish to push WebView")
        let nextVC = PostWebViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    


}

extension SubScribeCollectionViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        var url:String = dummy[indexPath.row].url
//        print(dummy[indexPath.row].url)
        let url:String = urlList.list[indexPath.row]
        
//        self.PostVC.resetURL(url: url)
//        self.navigationController?.pushViewController(PostVC, animated: true)
        PostWebViewController.url = URL(string: url)
        print(url)  // 일단 좋아!!! 여기까지
        self.pushWebView()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print("Will Display Cell : \(indexPath.row)")
        
    }
    
    func tableView(_ tableView: UITableView,
                   didEndDisplaying cell: UITableViewCell,
                   forRowAt indexPath: IndexPath) {
      print("Did End Display Cell : \(indexPath.row)")
    }
}


extension SubScribeCollectionViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.dummy.count
//        return PostData.Post.count
//        return 1
        return PostData.Post.subscribePostDtoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.identifier, for: indexPath) as? PostCell ?? PostCell()
//        cell.binding(model: PostData.PostListData[indexPath.row]) // decoding 전까지
//        cell.binding(model: self.dummy[indexPath.row])
//        cell.binding(model: PostData.Post[indexPath.row])
        cell.binding(model: PostData.Post.subscribePostDtoList[indexPath.row])
//        cell.binding(model: PostData.Post.first)
//        print(PostData.Post.first!)
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
}


