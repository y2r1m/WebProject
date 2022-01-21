# One Click Playlist : 원클릭 플레이리스트 공유 사이트

### 제작 환경
- jdk 16.0.2
- 톰캣 9.0
- 이클립스 2020-12
- MySQL 8.0.21

### 사용 방법
- full source code를 다운로드 받아 톰캣 서버, MySQL과 연동 필요
- MySQL 5.7 Command Line Client를 실행하여 'playlistDB' 이름의 데이터베이스 생성
- resources/sql 폴더 내 playlist.sql을 실행하여 'playlist' 이름의 테이블 생성
- sql 폴더 내 insert.sql을 실행하거나 사이트 내 'Add Playlist' 기능을 활용하여 플레이리스트 등록
- 플레이리스트 등록을 안하면 메인 페이지에 플레이리스트가 비어 있으니 유의