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
              2.3.1 [런치스크린 & 로그인뷰](#231-런치스크린-&-로그인뷰)  
              2.3.2 [회원가입뷰](#232-회원가입뷰)  
              2.3.3 [로딩뷰](#233-로딩뷰)              
              2.3.4 [홉뷰(키워드 글뷰)](#234-홈뷰(키워드-글뷰))     
              2.3.5 [키워드 리스트뷰](#235-키워드-리스트뷰)
              2.3.6 [키워드 검색뷰](#236-키워드-검색뷰)
              2.3.7 [구독자 글뷰](#237-구독자-글뷰)
              2.3.8 [Velog 글 웹뷰](#238-Velog-글-웹뷰)     
              2.3.9 [구독자 리스트뷰](#239-구독자-리스트뷰)
              2.3.10 [구독자 검색뷰](#2310-구독자-검색뷰)
              2.3.11 [알림뷰](#2311-알림뷰)
              2.3.12 [프로필뷰](#2312-프로필뷰) 
              2.3.13 [시현영상](#2313-시현영상)


3. [협업 규칙](#3-협업-규칙)
       3.1 [브랜치 규칙](#31-브랜치-규칙)
       3.2 [커밋 규칙](#32-커밋-규칙)
              
4. [프로젝트 제작에 참고된 문헌, 서적, URL](#4프로젝트-제작에-참고된-문헌-서적-url)

5. [프로젝트 참여 개발자 정보](#5-프로젝트-참여-개발자-정보)


 
# 1. 프로젝트 소개
  

## 1.1 프로젝트 기획배경

Velog는 Medium이나 Tistory와 비슷하게 IT 업계 사람들이 주로 사용하며, 개발 관련 글들을 읽고 쓸 수 있는 웹 서비스입니다.

Velog에 유익한 글이 많지만, 현재 웹서비스로만 운영되는 Velog는 유저의 관심사에 맞는 글을 추천하거나, 유저가 다른 Velog 유저를 구독하여 지속해서 구독한 유저의 글을 볼 수 있는 기능이 없어 불편한 점이 있습니다.

기술 블로그 성격상 웹 서비스와 함께 앱 형태로 출시된다면 많은 사람이 편리하게 기술 글들을 읽을 수 있겠다고 생각하여 Velog 웹 서비스를 앱 서비스 형태로 만들었습니다.

 
 ## 1.2 프로젝트 소개
 
개발자나 개발 공부를 해본 사람이라면 Velog 글을 한 번쯤 본 경험이 있을 것입니다. Velog는 하루에 약 8,000개의 글이 올라오는 대형 블로그 플랫폼입니다.

카카오, 인스타그램, 유튜브와 같은 대형 플랫폼 기업들은 서로 방식이 다를 뿐 모두 사용자에게 ‘편리함'을 제공하고 있습니다. 사용자는 그 무엇보다 ‘편리함'을 추구합니다. 조금이라도 더 사용하기에 편리한 서비스를 찾기 마련입니다.

우리는 ‘유튜브'가 사용자에게 ‘편리함'을 제공하는 방식에 집중하였습니다.

유튜브는 단편적으로 여러 사용자가 서로의 영상을 공유하는 서비스입니다. 유튜브는 사용자들이 편리하게 영상을 공유할 수 있는 환경을 만들어주었습니다. 앱 사용자가 다른 사용자를 구독할 수 있도록, 사용자가 주로 시청하는 영상의 유형을 판단하여 영상을 추천해주는 기능이 대표적입니다. 구독과 추천 기능은 단순해 보이는 영상 공유 서비스를 매달 20억 명이 넘는 사람들이 찾는 서비스로 성장시켰습니다.

지금의 웹 서비스 형태의 Velog는 유튜브와 같은 ‘구독', ‘추천’ 기능을 제공하고 있지 않습니다. 실제로 사용자들은 이 부분에서 불편함을 느끼고 있습니다. 우리는 Velog를 앱 서비스로 만들며 기존 Velog 서비스에 유튜브와 비슷한 성격의 ‘구독', ‘추천' 기능을 추가하였습니다. 앱 사용자가 본인이 즐겨 찾는 Velog 사용자를 구독하여 구독한 사용자의 글을 모아 볼 수 있도록 만들었습니다. 또한 앱 사용자가 관심이 있는 키워드를 입력하여 해당 키워드와 관련된 글을 모아 볼 수 있도록 만들었습니다.

기술의 공유가 활발한 IT 업계에서 지금의 Velog 웹 서비스와 함께 ‘구독', ‘추천' 기능이 추가된 Velog 앱 서비스는 사용자들이 서로의 글을 편리하게 공유할 수 있는 환경을 만들기에 충분합니다.


## 1.3 프로젝트의 차별성

기존 Velog 서비스에 있는 많은 사용자는 Velog 앱 서비스의 잠정적인 사용자들입니다. 

아직 Velog가 앱 서비스로 없다는 부분에 불편함을 느낀 사용자들은 ‘구독', ‘추천' 기능이 추가된 앱 형태의 Velog 서비스로 불편함을 해소할 것입니다. 

앱 출시는 초기 사용자들을 끌어오는 것과 끌어온 사용자를 유지해야 성공한 앱 서비스라고 합니다. Velog In Mobile은 초기 사용자들을 끌어오기에 유리하며, 기존 Velog에 없던 기능을 추가하여 초기 사용자들을 유지하는 것에도 유리합니다.

Velog의 DB에 전혀 접근하지 않고 데이터 스크래핑을 통해 정보를 가져오고 있습니다. 따라서 기술적으로 Velog에 전혀 종속되지 않습니다.

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


### 2.3.1 런치스크린 & 로그인뷰

로그인뷰에서 사용자의 ID와 Password를 입력받는다.

자동 로그인 기능으로 첫 로그인 이후 자동 로그인 가능합니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 17 10" src="https://user-images.githubusercontent.com/83629193/207912481-50b29dda-8863-43c5-8750-abb7bd1d5bdf.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 03 08" src="https://user-images.githubusercontent.com/83629193/207909624-cd1208f5-b7fa-4661-b759-6452561fe158.png">




### 2.3.2 회원가입뷰

회원가입뷰에서 사용자의 정보를 받습니다.

이름, 이메일, 비밀번호, 비밀번호 확인 모두 유효성 검사를 거치게 됩니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 15" src="https://user-images.githubusercontent.com/83629193/207909661-5e8d8c1a-efcc-4f6b-bb3c-6bd29c53a0ee.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 14 12" src="https://user-images.githubusercontent.com/83629193/207912049-df795369-aba3-4ec8-a3c2-451249483dee.png">




### 2.3.3 로딩뷰

로그인 성공 시 로딩뷰로 넘어가며 비동기로 서버 통신을 진행합니다.

로딩이 끝나면 자동으로 홈뷰로 이동합니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 13 43" src="https://user-images.githubusercontent.com/83629193/207911790-25d8b645-8a18-44f5-91da-53569c9964e9.png">



### 2.3.4 홈뷰(키워드 글뷰)

앱 유저가 추가해둔 키워드와 관련된 실제 Velog 웹서비스의 글들이 시간 순으로 보여집니다.

특정 글을 터치하면 글의 웹뷰로 이동하여 해당 글을 읽을 수 있습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 21" src="https://user-images.githubusercontent.com/83629193/207909697-59013262-697c-4c8e-ab57-e0d6bb1ff936.png">



### 2.3.5 키워드 리스트뷰

앱 유저가 추가해둔 키워드를 보여주는 리스트뷰입니다.

키워드 리스트에서 삭제하고 싶은 키워드를 클릭하면 Alert 창이 뜨며 삭제할 수 있습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 27" src="https://user-images.githubusercontent.com/83629193/207909741-92e9a24a-12b2-4dc9-ad30-1c91ac942099.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 04 49" src="https://user-images.githubusercontent.com/83629193/207910315-1762cf03-f580-4b23-8009-dc0e62775c1c.png">



### 2.3.6 키워드 검색뷰

홈뷰와 키워드 리스트뷰 우측 상단에 태그 아이콘을 터치하면 키워드 검색뷰로 이동합니다.

이미 추가했던 키워드는 중복으로 추가되지 않습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 33" src="https://user-images.githubusercontent.com/83629193/207909785-28f2eff2-c956-4a07-83c6-226e7636f2bc.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 03 37" src="https://user-images.githubusercontent.com/83629193/207909797-cf5e0ca1-6275-4618-9cc4-533e2020745a.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 03 44" src="https://user-images.githubusercontent.com/83629193/207909817-86e697cd-7a46-4c99-a66f-91725b3c2115.png">



### 2.3.7 구독자 글뷰

앱 유저가 추가해둔 구독자의 실제 Velog 웹서비스의 글들이 시간 순으로 보여집니다.

특정 글을 터치하면 글의 웹뷰로 이동하여 해당 글을 읽을 수 있습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 50" src="https://user-images.githubusercontent.com/83629193/207909903-ed7e6f5f-ed98-4714-b3e3-e333837708d7.png">



### 2.3.8 Velog 글 웹뷰

URL을 통해 앱 사용자가 터치한 글이 보여진다.

글 웹뷰를 불러오는 동안 비동기적으로 애니메이션이 보여진다.

사용자가 입력해둔 키워드와 관련된 추천 글의 웹뷰에서는 해당 글을 작성한 Velog 사용자를 구독할 수 있도록, 우측 상단에 "구독 추가" 버튼을 만들어 구독할 수 있다.

<img width="360" alt="스크린샷 2022-12-16 오전 1 14 01" src="https://user-images.githubusercontent.com/83629193/207911985-112a61cd-b78b-435a-b6a1-6fc8793dc60d.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 13 48" src="https://user-images.githubusercontent.com/83629193/207911960-8cb0f91a-7c26-4293-ad1b-ff73d359b73f.png">



### 2.3.9 구독자 리스트뷰

앱 유저가 추가해둔 구독자를 보여주는 리스트뷰입니다.

구독자 리스트에서 삭제하고 싶은 구독자를 클릭하면 Alert 창이 뜨며 삭제할 수 있습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 03 55" src="https://user-images.githubusercontent.com/83629193/207909963-acf0bd76-267a-442b-960f-d1c6cebc1954.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 04 20" src="https://user-images.githubusercontent.com/83629193/207910148-8ebabe41-09ad-494c-8f8f-95f366a59306.png">



### 2.3.10 구독자 검색뷰

구독자 글뷰와 구독자 리스트뷰 우측 상단에 돋보기 아이콘을 터치하면 구독자 검색뷰로 이동합니다.

이미 추가했던 구독자는 중복으로 추가되지 않고 Velog 웹 서비스에 없는 사용자는 구독할 수 없습니다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 04 00" src="https://user-images.githubusercontent.com/83629193/207910007-781fdc0d-04d7-4d3c-9684-04dcfb418dff.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 04 04" src="https://user-images.githubusercontent.com/83629193/207910019-aeda02d8-e356-42c0-9e19-9f06ddb0b6d0.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 04 10" src="https://user-images.githubusercontent.com/83629193/207910036-1040070c-5f49-403a-83bb-b09944132b5f.png"><img width="363" alt="스크린샷 2022-12-16 오전 1 04 15" src="https://user-images.githubusercontent.com/83629193/207910052-551d8a0f-deeb-4142-9904-87d0c8b6025a.png">



### 2.3.11 알림뷰

앱 사용자가 추가했던 구독자들이 새 글을 썼을 때 푸쉬 알림으로 새 글 알림을 보냅니다.

서버 파트의 구현은 끝났고 클라이언트 파트에서 구현 중에 있습니다.

<img width="363" alt="스크린샷 2022-12-07 오후 5 38 06" src="https://user-images.githubusercontent.com/83629193/206130045-d1ae1d22-61d7-409d-8d6b-7107539fa983.png">



### 2.3.12 프로필뷰

푸쉬 알림을 끄고 킬 수 있는 버튼, 로그아웃, 회원탈퇴 기능이 구현되어있다.

<img width="363" alt="스크린샷 2022-12-16 오전 1 33 07" src="https://user-images.githubusercontent.com/83629193/207916298-7cfbd329-f7ab-4c67-b7fc-38e0e18ce84a.png">



### 2.3.13 시현영상

https://user-images.githubusercontent.com/83629193/207916430-1667628f-b4dc-4d65-b851-1b535d8b5b52.mp4 

https://user-images.githubusercontent.com/83629193/207916508-0ca2c0e4-b91b-454a-a1a2-3c2302e7f10a.mp4



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
