//
//  LoadingViewController.swift
//  iOS_Velog
//
//  Created by 홍준혁 on 2022/12/06.
//

import UIKit
import Moya
import NVActivityIndicatorView
import SnapKit

class LoadingViewController: UIViewController {
    
    private let provider = MoyaProvider<SubscriberService>()
    private let providerForTag = MoyaProvider<TagService>()
    private let concurrentQueue = DispatchQueue.init(label: "LoadingQueue",attributes: .concurrent)


    let titleLabel = UILabel().then {
        $0.text = "Velog in Mobile"
        $0.font = UIFont(name: "Avenir-Black", size: 50)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

        self.navigationItem.hidesBackButton = true
        
        

        self.QueueAsynchronous()

    }
    
    func QueueAsynchronous(){
        
        concurrentQueue.sync {
            self.getServerTag()
            print("async1")
        }
        concurrentQueue.sync {
            self.getServer()
            print("async2")
        }
        concurrentQueue.sync {
            self.getPostDataServer()
            print("async3")
        }
        concurrentQueue.sync {
            self.getTagPostDataServer()
            print("async4")
        }
    }
    
    func pushToHome(){
        let nextVC = CustomTabBarController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }

    
    func getPostDataServer(){
        self.provider.request(.subscriberpost){ response in
            switch response{
            case .success(let moyaResponse):
                do{
                    print("getPost")
                    
                    print(moyaResponse.statusCode)
                    PostData.Post = try moyaResponse.map(PostList.self)
                    
                    self.resetURL(indexSize: PostData.Post.subscribePostDtoList.count)
                    
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

                }catch(let err) {
                    print(err.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    func getServerTag(){
        self.providerForTag.request(.gettag){response in
            switch response{
            case .success(let moyaResponse):
                do{
                    print(moyaResponse.statusCode)
                    userTag.List = try moyaResponse.mapJSON() as! [String]
                    print(userTag.List)
                }catch(let err) {
                    print(err.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    // 태그 맞춤 글 추천 아직 어디에 사용할 지 모름, 이런
    func getTagPostDataServer(){
        self.providerForTag.request(.tagpost){ response in
            switch response{
            case .success(let moyaResponse):
                do{
                    print("getPostTag")
                    print(moyaResponse.statusCode)
                    TagPostData.Post = try moyaResponse.map(PostTagList.self)
                    // for test
                    print(TagPostData.Post.tagPostDtoList.count)
                    self.resetTagURL(indexSize: TagPostData.Post.tagPostDtoList.count)
                    print("성공")
                    
                    // 서버 응답 받아오는 것 종료!!! 여기서 뷰 HomeView 호출
                    DispatchQueue.main.async {
                        self.pushToHome()
                    }
                    
                }catch(let err){
                    print(err.localizedDescription)
                    print("맵핑 안됨")
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    func resetURL(indexSize:Int){
        urlList.list.removeAll()
        for x in 0..<indexSize {
            urlList.list.append(PostData.Post.subscribePostDtoList[x].url)
        }
//        for x in 0..<indexSize {
//            print("UrlList")
//            print(urlList.list[x])
//        }
    }
    
    func resetTagURL(indexSize:Int){
        for x in 0..<indexSize {
            TagaUrlList.list.append(TagPostData.Post.tagPostDtoList[x].url)
        }
//        for x in 0..<indexSize {
//            print("TagUrlList")
//            print(TagaUrlList.list[x])
//        }

    }

}
