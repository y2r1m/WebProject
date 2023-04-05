# One Click Playlist : 원클릭 플레이리스트 공유 사이트

## 제작 환경
- jdk 16.0.2
- 톰캣 9.0
- 이클립스 2020-12
- MySQL 8.0.21

## 사용 방법
- full source code를 다운로드 받아 톰캣 서버, MySQL과 연동 필요
- MySQL 5.7 Command Line Client를 실행하여 'playlistDB' 이름의 데이터베이스 생성
- resources/sql 폴더 내 playlist.sql을 실행하여 'playlist' 이름의 테이블 생성
- sql 폴더 내 insert.sql을 실행하거나 사이트 내 'Add Playlist' 기능을 활용하여 플레이리스트 등록
- 플레이리스트 등록을 안하면 메인 페이지에 플레이리스트가 비어 있으니 유의

## 사이트 실행 모습

### 1. 메인 화면
![addPL1](https://user-images.githubusercontent.com/69053602/230117305-364b9257-752e-4693-aae0-68d71209844e.jpg)

---

### 2. 플레이리스트 선택
![OCP1](https://user-images.githubusercontent.com/69053602/230116956-48724b30-7289-4fd1-be64-b9970bc3a806.jpg)

---

### 3. 원클릭 링크
![OCP2](https://user-images.githubusercontent.com/69053602/230117024-34b469ac-da78-4d23-8ca1-6f9644136a0e.jpg)
