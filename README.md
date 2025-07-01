# HaEun - 이사 플랫폼 웹사이트

HaEun은 이사업체를 찾는 사용자를 위한 간편한 이사 견적 요청 및 리뷰 플랫폼입니다.
회원가입 없이도 누구나 이사 요청을 등록하고, 업체를 평가할 수 있습니다.

## 주요 기능
- 이사 견적 요청 작성 (이름, 주소, 일정 등 입력)
- 리뷰 작성 / 조회 / 삭제
- 관리자용 비밀번호 인증을 통한 리뷰 삭제 기능
- 회원가입 없이 이용 가능
- 배포된 웹사이트 (AWS EC2, Tomcat)

## 사용 기술
- Backend : Java, Spring MVC, JDBC
- Frontend : HTML, CSS, JavaScript
- Database : MySQL
- Deployment : AWS EC2, Apache Tomcat 9

## 프로젝트 구조
- src/main/java # Controller, Service, Dao, Vo 등
- src/main/webapp # JSP 파일, CSS, Img
- WEB-INF/web.xml # 웹 설정
- server.xml # Tomcat 설정
- database # MySQL은 EC2 서버에 직접 설치 및 관리(프로젝트 외부)

> 데이터베이스는 EC2 서버 내 MySQL에서 운영되고 있으며,  
> 프로젝트 폴더에는 별도의 DB 스크립트 파일이 포함되어 있지 않습니다.

## 프로젝트 설명
- 개발기간 : 2024년 5월 ~ 2025년 4월 (집중 개발 : 2025년 3~4월)
- 역할 : 프론트엔드 개발,  백엔드 개발, DB 설계, 배포 및 유지보수 전담
- 목적 : 실사용을 하기 위한 실전형 프로젝트 경험

## 실행 방법
- 이 프로젝트는 AWS EC2에 배포되어 있습니다.
- 서버는 Tomcat 9에서 실행 중이며, MySQL은 EC2 내에 직접 설치되어 운영되고 있습니다.
- 별도의 로컬 실행 환경 설정 없이 아래 주소로 접속하면 서비스를 이용할 수 있습니다.
- [HaEun 서비스 바로가기](https://haeun24.com)  
