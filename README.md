# " 기술 공유에 편리함을 제공하는 Velog In Mobile 입니다. "

## Client 파트

# 목차
 1. [프로젝트 소개](#1-프로젝트-소개)                                           
       1.1 [프로젝트 기획배경](#11-프로젝트-기획배경)  
       1.2 [프로젝트 소개](#12-프로젝트-소개)                          
       1.3 [프로젝트의 차별성](#13-프로젝트의-차별성)                        
       1.4 [프로그램 사용 라이브러리](#14-프로젝트-사용-라이브러리)        
       1.5 [프로그램 파일 분할](#15-프로그램-파일-)                  
       
2. [설치 및 사용 매뉴얼](#2-설치-및-사용-뉴얼)            
       2.1 [개발자의 경우(설치)](#21-개발자의-경우설치)                  
       2.2 [일반 사용자의 경우(설치)](#22-일반-사용자의-경우설치)                   
       2.3 [Velog In Mobile 사용 방법](#23-Velog-In-Mobile-사용-방법)  
              2.3.1 [로그인뷰](#231-로그인뷰)  
              2.3.2 [회원가입뷰](#232-회원가입뷰)  
              2.3.3 [로딩뷰](#233-로딩뷰)              
              2.3.4 [홉뷰(키워드 글뷰)](#234-홈뷰(키워드-글뷰))     
              2.3.5 [키워드 리스트뷰](#235-키워드-리스트뷰)
              2.3.6 [키워드 검색뷰](#236-키워드-검색뷰)
              2.3.7 [구독자 글뷰](#237-구독자-글뷰)     
              2.3.8 [구독자 리스트뷰](#238-구독자-리스트뷰)
              2.3.9 [구독자 검색뷰](#239-구독자-검색뷰)
              2.3.10 [알림뷰](#2310-알림뷰)
              2.3.11 [프로필뷰](#2311-프로필뷰) 
              2.3.12 [시현영상](#2312-시현영상)

3. [협업 규칙](#3-협업-규칙)
       3.1 [브랜치 규칙](#31-브랜치-규칙)
       3.2 [커밋 규칙](#32-커밋-규칙)
              
4. [프로젝트 제작에 참고된 문헌, 서적, URL](#4프로젝트-제작에-참고된-문헌-서적-url)

5. [프로젝트 참여 개발자 정보](#5-프로젝트-참여-개발자-정보)


 
# 1. 프로젝트 소개
  

## 1.1 프로젝트 기획배경

Velog는 Medium이나 Tistory와 비슷하게 IT 업계 사람들이 주로 사용하며, 개발 관련 글들을 쓰고 읽을 수 있는 웹 서비스입니다.

Velog에 유익한 글이 많지만, 현재 웹서비스로 운영되는 Velog는 유저의 관심사에 맞는 글을 추천하거나, 유저가 다른 Velog 유저를 구독하여 지속해서 구독한 유저의 글을 볼 수 있는 기능이 없어 불편한 점이 있습니다.

기술 블로그 성격상 웹 서비스와 함께 앱 형태로 출시된다면 많은 사람이 편리하고 일상적으로 기술 글들을 읽을 수 있겠다고 생각하여 Velog 웹 서비스를 앱 서비스 형태로 만들었습니다.

 
 ## 1.2 프로젝트 소개
 
개발자나 개발 공부를 해본 사람이라면 Velog 글 한 번쯤은 본 경험이 있을 것입니다. Velog는하루에 약 8,000개의 글이 올라오는 대형 블로그 플랫폼입니다.

여기서 우리는 많은 플랫폼 기업들의 특징에 대해 분석해보았습니다. 카카오, 인스타그램, 유튜브와 같은 대형 플랫폼 기업들은 방식이 다를 뿐 모두 사용자에게 ‘편리함'을 제공하고 있습니다. 사용자는 그 무엇보다 ‘편리함'을 추구합니다. 조금이라도 더 사용하기에 편리한 서비스를 찾기 마련입니다.

우리 팀은 ‘유튜브' 가 사용자에게 ‘편리함'을 제공하는 방식에 집중하였습니다.

유튜브는 단편적으로 여러 사용자가 그들의 영상을 공유하는 서비스입니다. 다만, 사용자들의 영상 공유를 편리하게 되도록 환경을 만들어주었습니다. 사용자들이 다른 사용자를 구독할 수 있도록, 사용자들이 주로 시청하는 동영상의 유형을 판단하여 동영상을 추천해주는 기능이 대표적입니다. 구독과 추천 기능은 단순해 보이는 영상 공유 서비스를 매달 20억 명이 넘는 사람들이 찾는 서비스로 성장시켰습니다.

지금의 웹 서비스 형태의 Velog는 유튜브와 같은 ‘구독', ‘추천’ 기능을 제공하지 않습니다. 실제로 사용자들은 이 부분에서 불편함을 느끼고 있습니다. 매번 자신이 추천받는 글은 Velog에서 가장 ‘좋아요'가 많은 글들입니다. 우리 팀은 Velog를 앱 형태로 만들며 Velog 서비스에 유튜브와 비슷한 성격의 ‘구독', ‘추천' 기능을 추가하였습니다. 앱 사용자가 본인이 즐겨 찾는 Velog 글의 작성자를 구독하여 구독한 사용자의 글을 모아 볼 수 있도록 만들었습니다. 또한 앱 사용자가 관심이 있는 키워드를 입력하여 해당 키워드와 관련된 글을 모아 볼 수 있도록 만들었습니다.

기술의 공유가 활발한 IT 업계에서 지금의 Velog 웹 서비스와 함께 ‘구독', ‘추천' 기능이 추가된 Velog 앱 서비스는 사용자들이 서로의 글을 편리하게 공유할 수 있는 환경을 만들기에 충분합니다.


## 1.3 프로젝트의 차별성

기존 Velog 서비스에 있는 많은 사용자는 Velog 앱 서비스의 잠정적인 사용자들입니다. 

아직 Velog가 앱 서비스로 없다는 부분에 불편함을 느낀 사용자들은 ‘구독', ‘추천' 기능이 추가된 앱 형태의 Velog 서비스로 불편함을 해소할 것입니다. 앱 출시는 초기 사용자들을 끌어오는 것과 끌어온 사용자를 유지해야 성공한 앱 서비스라고 생각합니다. 우리의 아이디어는 초기 사용자들을 끌어오기에도 유리하며, 기존 Velog에 없던 기능을 추가하며 끌어온 초기 사용자들을 유지하는 것에도 유리합니다.

Velog의 DB에 전혀 접근하지 않고 Velog의 사용자에 대한 정보와 Velog 사용자의 글에 대한 정보를 활용하고 있습니다. 따라서 기술적으로 Velog에 전혀 종속되지 않습니다.

Velog 앱 서비스는 Velog 웹 서비스와 상부상조하는 관계가 될 것입니다.


## 1.4 프로그램 사용한 라이브러리

클라이언트 iOS 파트에서 사용한 Swift Package 목록

<img width="453" alt="스크린샷 2022-12-07 오후 4 30 55" src="https://user-images.githubusercontent.com/83629193/206118938-10cbc0ea-4070-4072-8697-600bffbc6547.png">


## 1.5 프로그램 파일 분할

<img width="400" alt="스크린샷 2022-12-07 오후 4 41 04" src="https://user-images.githubusercontent.com/83629193/206119199-6a00553b-c4db-437c-8770-f51142ad5819.png">
<img width="399" alt="스크린샷 2022-12-07 오후 4 48 41" src="https://user-images.githubusercontent.com/83629193/206119257-552af41c-d9ad-4adf-8881-ebf659c3ac2e.png">


# 2. 설치 및 사용 매뉴얼


## 2.1 개발자의 경우(설치)

개발자의 경우 저희 깃허브 URL로 들어와 프로젝트를 클론 받은 이후 빌드할 수 있습니다.


## 2.2 일반 사용자의 경우(설치)

일반 사용자의 경우 2023년 3월 중으로 출시를 계획하고 있어 출시 이후 App Store에서 다운받을 수 있습니다.


## 2.3 Velog In Mobile 사용 방법


### 2.3.1 로그인뷰

로그인뷰에서 사용자의 ID와 Password를 입력받는다.
자동 로그인 기능으로 첫 로그인 이후 자동 로그인 가능합니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 36 49" src="https://user-images.githubusercontent.com/83629193/206129576-3d234003-75bb-4994-ab27-79a3973045a1.png"> <img width="363" alt="스크린샷 2022-12-07 오후 5 36 55" src="https://user-images.githubusercontent.com/83629193/206129590-53a7cf13-3437-4cb6-b8e4-6e2d69858da6.png">



### 2.3.2 회원가입뷰

회원가입뷰에서 사용자의 정보를 받습니다.

이메일과 비밀번호는 유효성 검사를 거치게 됩니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 36 59" src="https://user-images.githubusercontent.com/83629193/206129621-0f65f8df-0f3a-4359-8529-db276b35e3a6.png">



### 2.3.3 로딩뷰

로그인 성공 시 로딩뷰로 넘어가며 비동기로 서버 통신을 진행합니다.

로딩이 끝나면 자동으로 홈뷰로 이동합니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 06" src="https://user-images.githubusercontent.com/83629193/206129651-2a847d92-1763-40b0-8e91-d2ba061e263f.png">



### 2.3.4 홈뷰(키워드 글뷰)

앱 유저가 추가해둔 키워드와 관련된 글들이 시간 순으로 보여집니다.

특정 글을 터치하면 글의 웹뷰로 이동하여 해당 글을 읽을 수 있습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 10" src="https://user-images.githubusercontent.com/83629193/206129678-091b992d-cd81-4b97-9623-539e84ad708a.png">


### 2.3.4 키워드 리스트뷰

앱 유저가 추가해둔 키워드를 보여주는 리스트뷰입니다.

특정 키워드를 가로 스와이프 제스처를 통해 삭제 가능합니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 26" src="https://user-images.githubusercontent.com/83629193/206129705-4d9d05c3-27c8-4402-9171-af88c0ba4459.png">



### 2.3.5 키워드 검색뷰

홈뷰와 키워드 리스트뷰 우측 상단에 태그 아이콘을 터치하면 키워드 검색뷰로 이동합니다.

이미 추가했던 키워드는 중복으로 추가되지 않습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 18" src="https://user-images.githubusercontent.com/83629193/206129755-ec616b2e-71ca-4a89-8a85-9a6d2c8ce82a.png"> <img width="363" alt="스크린샷 2022-12-07 오후 5 37 21" src="https://user-images.githubusercontent.com/83629193/206129763-d5217a7c-94cb-4a46-b40a-d27255b83410.png">



### 2.3.6 구독자 글뷰

앱 유저가 추가해둔 구독자의 글들이 시간 순으로 보여집니다.

특정 글을 터치하면 글의 웹뷰로 이동하여 해당 글을 읽을 수 있습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 44" src="https://user-images.githubusercontent.com/83629193/206129836-bc90e5e0-c606-4054-b90d-6c95486b5faf.png">



### 2.3.7 글웹뷰

URL을 통해 앱 사용자가 터치한 글이 보여진다.
글웹뷰를 불러오는 동안 비동기적으로 애니메이션이 보여진다.
<img width="363" alt="스크린샷 2022-12-07 오후 5 38 18" src="https://user-images.githubusercontent.com/83629193/206129911-c298529b-aa51-4ce4-a1b0-07430af55da1.png"> <img width="363" alt="스크린샷 2022-12-07 오후 5 38 23" src="https://user-images.githubusercontent.com/83629193/206129901-729b7258-4533-40f1-b1bb-f2a33dee0edd.png">



### 2.3.8 구독자 리스트뷰

앱 유저가 추가해둔 구독자를 보여주는 리스트뷰입니다.

특정 구독자를 가로 스와이프 제스처를 통해 삭제 가능합니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 38 14" src="https://user-images.githubusercontent.com/83629193/206129946-e7a59e96-8cd1-4f4b-9b64-b4b77e5100db.png">


### 2.3.9 구독자 검색뷰

구독자 글뷰와 구독자 리스트뷰 우측 상단에 돋보기 아이콘을 터치하면 구독자 검색뷰로 이동합니다.

이미 추가했던 구독자는 중복으로 추가되지 않고 Velog 웹 서비스에 없는 사용자는 구독할 수 없습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 37 36" src="https://user-images.githubusercontent.com/83629193/206129978-94e22349-590c-4fd9-9eca-b80ab56da4a7.png"> <img width="363" alt="스크린샷 2022-12-07 오후 5 37 41" src="https://user-images.githubusercontent.com/83629193/206130005-e06b9a49-6b70-4cd5-9e1e-f02d61248de2.png">


### 2.3.10 알림뷰

앱 사용자가 추가했던 구독자들이 새 글을 썼을 때 푸쉬 알림으로 새 글 알림을 보냅니다.

서버 파트의 구현은 끝났고 클라이언트 파트에서 구현 중에 있습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 38 06" src="https://user-images.githubusercontent.com/83629193/206130045-d1ae1d22-61d7-409d-8d6b-7107539fa983.png">



### 2.3.11 프로필뷰

푸쉬 알림을 끄고 킬 수 있는 버튼, 로그아웃, 회원탈퇴 기능이 구현되어있다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 38 10" src="https://user-images.githubusercontent.com/83629193/206130051-57807413-971e-4171-8917-fee9ca6f26b7.png">



### 2.3.12 시현영상

https://user-images.githubusercontent.com/83629193/206408636-be9ff172-34aa-4c1e-bc59-9c2cbe3b840e.mov

https://user-images.githubusercontent.com/83629193/206408670-577d94d8-6b70-4f06-9796-e0ea7adc62a4.mov



# 3.협업 규칙


## 3.1 브랜치 규칙

`feature/{기능}`  형식

예시 : feature/Login, feature/Chart

## 3.2 커밋 규칙

- feat : 새로운 기능 추가
- fix : 버그 수정, 기능 수정
- docs : 문서 수정
- refactor : 코드 리팩토링 (변수명 수정 등)
- test : 테스트 코드, 리팩토링 테스트 코드 추가
- style : 코드 스타일 변경, 코드 자체 변경이 없는 경우
- remove : 파일 또는 코드, 리소스 제거
- resource : 이미지 리소스, prefab 등의 코드와 상관없는 리소스 추가

예시 : 
- resource : 이미지 리소스, prefab 등의 코드와 상관없는 리소스 추가
- feat : Add translation to missing strings
- feat : Disable publishing
- feat : Sort list context menu
- feat : Resize minimize/delete handle icons so they take up the entire topbar
- fix : Fix typo in cleanup.sh file


# 4. 프로젝트 제작에 참고된 문헌, 서적, URL

https://developer.apple.com/documentation


# 5. 프로젝트  개발자 정보

iOS : 홍준혁 Github Profile - https://github.com/hongjunehuke

iOS : 주현아 Github Profile - https://github.com/JuHyeonAh

Server : 국혜경 Github Profile - https://github.com/k0000k 

Server : 김진수 Github Profile - https://github.com/kikuke
