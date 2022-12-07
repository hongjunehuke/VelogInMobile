# VelogInMobile
"새로운 프로젝트 시작"

 -----------------------------------------------------------

# 목차
 1. [프로젝트 소개](#1-프로젝트-소개)                                           
       1.1 [프로젝트 기획배경](#1.1-프로젝트-기획배경)  
       1.2 [프로젝트 소개](#1.2-프로젝트-소개)                          
       1.3 [프로그램의 차별성](#1.3-프로그램의-차별성)                        
       1.4 [프로그램 사용 라이브러리](#1.4-프로젝트-사용-라이브러리)        
       1.5 [프로그램 파일 분할](#1.5-프로그램-파일-)                  
       
2. [설치 및 사용 메뉴열](#2-설치-및-사용-메뉴얼)            
       2.1 [개발자의 경우(설치)](#2.1-개발자의-경우설치)                  
       2.2 [일반 사용자의 경우(설치)](#2.2-일반-사용자의-경우설치)                   
       2.3 [Velog In Mobile 사용 방법](#2.3-Velog-In-Mobile-사용-방법)                
              2.3.1 [로그인뷰](#2.3.1-로그인뷰)  
              2.3.2 [회원가입뷰](#2.3.2-회원가입뷰)  
              2.3.3 [로딩뷰](#2.3.3-로딩뷰)              
              2.3.4 [홉뷰(키워드 글뷰)](#2.3.4-홈뷰(키워드-글뷰))     
              2.3.5 [키워드 리스트뷰](#2.3.5-키워드-리스트뷰)
              2.3.6 [키워드 검색뷰](#2.3.6-키워드-검색뷰)
              2.3.7 [구독자 글뷰](#2.3.7-구독자-글뷰)     
              2.3.8 [구독자 리스트뷰](#2.3.8-구독자-리스트뷰)
              2.3.9 [구독자 검색뷰](#2.3.9-구독자-검색뷰)
              2.3.10 [알림뷰](#2.3.10-알림뷰)
              2.3.11 [프로필뷰](#2.3.11-프로필뷰) 
              
3. [프로젝트 제작에 참고된 참고문헌, 서적, URL](#3프로젝트-제작에-참고된-참고문헌-서적-url)

4. [프로젝트 개발자 정보](#4-프로젝트-개발자-정보)

------------------------------------------
 
# 1. 프로젝트 소개
  

## 1.1 프로젝트 기획배경

Velog는 Medium이나 Tistory와 비슷하게 IT 업계 사람들이 주로 사용하여, 개발 관련 글들을 쓰고 읽을 수 있는 웹 서비스이다.

Velog에 유익한 글이 많지만, 현재 웹서비스로 운영되는 Velog는 유저의 관심사에 맞는 글을 추천하거나, 유저가 다른 Velog 유저를 구독하여 지속해서 구독한 유저의 글을 볼 수 있는 기능이 없어 불편한 점이 많았다.

기술 블로그 성격상 웹 서비스와 함께 앱 형태로 출시된다면 많은 사람이 편리하고 일상적으로 기술 글들을 읽을 수 있겠다고 생각하여 Velog 웹 서비스를 앱 서비스 형태로 만들었다.

------------------------------------------
 
 ## 1.2 프로젝트 소개
 
 개발자나 개발 공부를 해본 사람이라면 Velog 글 한 번쯤은 본 경험이 있을 것이다. Velog는하루에 약 8,000개의 글이 올라오는 대형 블로그 플랫폼이다.

여기서 우리는 많은 플랫폼 기업들의 특징에 대해 분석해보았다. 카카오, 인스타그램, 유튜브와 같은 대형 플랫폼 기업들은 방식이 다를 뿐 모두 사용자에게 ‘편리함'을 제공하고 있었다. 사용자는 그 무엇보다 ‘편리함'을 추구한다. 조금이라도 더 사용하기에 편리한 서비스를 찾기 마련이다.

우리 팀은 ‘유튜브' 가 사용자에게 ‘편리함'을 제공하는 방식에 집중하였다.

유튜브는 단편적으로 여러 사용자가 그들의 영상을 공유하는 서비스이다. 다만, 사용자들의 영상 공유를 편리하게 되도록 환경을 만들어주었다. 사용자들이 다른 사용자를 구독할 수 있도록, 사용자들이 주로 시청하는 동영상의 유형을 판단하여 동영상을 추천해주는 기능이 대표적이다. 구독과 추천 기능은 단순해 보이는 영상 공유 서비스를 매달 20억 명이 넘는 사람들이 찾는 서비스로 성장시켰다.

지금의 웹 서비스 형태의 Velog는 유튜브와 같은 ‘구독', ‘추천’ 기능을 제공하지 않는다. 실제로 사용자들은 이 부분에서 불편함을 느끼고 있다. 매번 자신이 추천받는 글은 Velog에서 가장 ‘좋아요'가 많은 글들이다. 우리 팀은 Velog를 앱 형태로 만들며 Velog 서비스에 유튜브와 비슷한 성격의 ‘구독', ‘추천' 기능을 추가하였다. 앱 사용자가 본인이 즐겨 찾는 Velog 글의 작성자를 구독하여 구독한 사용자의 글을 모아 볼 수 있도록 만들었다. 또한 앱 사용자가 관심이 있는 키워드를 입력하여 해당 키워드와 관련된 글을 모아 볼 수 있도록 만들었다.

기술의 공유가 활발한 IT 업계에서 지금의 Velog 웹 서비스와 함께 ‘구독', ‘추천' 기능이 추가된 Velog 앱 서비스는 사용자들이 서로의 글을 편리하게 공유할 수 있는 환경을 만들기에 충분하다.

------------------------------------------

## 1.3 프로젝트 차별성

기존 Velog 서비스에 있는 많은 사용자는 Velog 앱 서비스의 잠정적인 사용자들이다. 아직 Velog가 앱 서비스로 없다는 부분에 불편함을 느낀 사용자들은 ‘구독', ‘추천' 기능이 추가된 앱 형태의 Velog 서비스로 불편함을 해소할 것이다. 앱 출시는 초기 사용자들을 끌어오는 것과 끌어온 사용자를 유지해야 성공한 앱 서비스라고 생각한다. 우리의 아이디어는 초기 사용자들을 끌어오기에도 유리하며, 기존 Velog에 없던 기능을 추가하며 끌어온 초기 사용자들을 유지하는 것에도 유리하다.

Velog의 DB에 전혀 접근하지 않고 Velog의 사용자에 대한 정보와 Velog 사용자의 글에 대한 정보를 활용하고 있다. 따라서 기술적으로 Velog에 전혀 종속되지 않는다.

Velog 앱 서비스는 Velog 웹 서비스와 상부상조하는 관계가 될 것이다.

------------------------------------------

## 1.4 프로그램 라이브러리

클라이언트 iOS 파트에서 사용한 Swift Package 목록

<img width="453" alt="스크린샷 2022-12-07 오후 4 30 55" src="https://user-images.githubusercontent.com/83629193/206118938-10cbc0ea-4070-4072-8697-600bffbc6547.png">

------------------------------------------

## 1.5 프로그램 파일 분할

<img width="400" alt="스크린샷 2022-12-07 오후 4 41 04" src="https://user-images.githubusercontent.com/83629193/206119199-6a00553b-c4db-437c-8770-f51142ad5819.png">
<img width="399" alt="스크린샷 2022-12-07 오후 4 48 41" src="https://user-images.githubusercontent.com/83629193/206119257-552af41c-d9ad-4adf-8881-ebf659c3ac2e.png">

------------------------------------------

# 2. 설치 및 사용 매뉴얼


## 2.1 개발자의 경우(설치)

개발자의 경우 저희 깃허브 URL로 들어와 프로젝트를 클론 받은 이후 빌드할 수 있습니다.

-----------------------------------------------------------

## 2.2 일반 사용자의 경우(설치)

일반 사용자의 경우 2023년 3월 중으로 출시를 계획하고 있어. 출시 이후 App Store에서 다운받을 수 있습니다.

-----------------------------------------------------------

## 2.3 VelogInMobile 사용방

























### 협업 규칙
#### 1. 브랜치 규칙

`feature/{기능}`  형식

예시 : feature/Login, feature/Chart

#### 2. Commit Message

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
