<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<title>Introduce</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">One Click Playlists 소개</h1>
            </div>
        </div>
    </header>
    <div style = "padding: 45px;"></div>
	<div class="container">
		<h2 class="fw-bolder"><i class="bi bi-vinyl-fill"></i> 플레이리스트를 여러 음원 사이트로 쉽게 Share!</h2><br>
			<h5><b>방법은 아주 간단합니다. 원하는 플레이리스트의 <a class="btn btn-outline-dark mt-auto">One Click Link</a> 버튼을 누른 후,<br>
				사용하시는 음원 사이트 버튼을 누르면 당신의 플레이리스트가 바로 채워집니다.<br></b></h5>
	</div>
	<div style = "padding: 30px;"></div>
	<div class="container">
			<h5><b><i class="bi bi-play-fill"></i> Step 1. 원하는 플레이리스트를 선택하세요.</b></h5>	
			<div class="text-center text-white"><img src="./resources/assets/images/OCP1.jpg"></div>
	</div>
	<div style = "padding: 40px;"></div>
	<div class="container">
			<h5><b><i class="bi bi-play-fill"></i> Step 2. 사용하시는 음원 사이트의 버튼을 누르세요.</b></h5>	
			<div class="text-center text-white"><img src="./resources/assets/images/OCP2.jpg"></div>
	</div>
	<div style = "padding: 40px;"></div>
	<div class="container">
			<h5><b><i class="bi bi-play-fill"></i> Step 3. 당신의 플레이리스트에서 곧바로 재생됩니다.</b></h5><br>	
			<div class="text-center text-white"><img src="./resources/assets/images/OCP3.jpg"></div>
			</div>
	</div>
	<div style = "padding: 70px;"></div>
	<div class="container">	
		<h2 class="fw-bolder"><i class="bi bi-vinyl-fill"></i> 원하는 플레이리스트 등록하기</h2>
			<p> 기본 정보 입력은 간단합니다. 중요한 건 등록하기를 원하는 플레이리스트의 곡 아이디를 입력하는 것입니다.<br>
			곡 아이디를 어떻게 찾냐구요? 음원 사이트별로 곡의 고유 아이디를 가집니다. 이는 곡 정보 링크에 적혀 있습니다!<br></p>
	</div>
	<div style = "padding: 20px;"></div>
	<div class="container">
			<h5><b><i class="bi bi-play-fill"></i> Step 1. 멜론, 지니, 벅스에서 플레이리스트를 구성할 곡의 아이디 찾기</b></h5>
			<p>*예시 사진은 멜론 사이트지만, 모두 동일한 방식으로 찾을 수 있습니다.	<br>
	</div>
	<div style = "padding: 20px;"></div>
	<div class="container">
		<h6><b><i class="bi bi-play"></i> 1-1. 곡 정보 보기</b></h6><br>
			<div class="text-center text-white"><img src="./resources/assets/images/songId1.jpg"></div>
	</div>
	<div style = "padding: 20px;"></div>
	<div class="container">
		<h6><b><i class="bi bi-play"></i> 1-2. 링크에 포함된 곡 아이디를 찾으면 완료!</b></h6><br>
			<div class="text-center text-white"><img src="./resources/assets/images/songId2.jpg" width=800 height=500></div>
	</div>
	<div style = "padding: 30px;"></div>
	<div class="container">
			<h5><b><i class="bi bi-play-fill"></i> Step 2. 플레이리스트 정보 입력하기</b></h5><br>	
	</div>
	<div style = "padding: 10px;"></div>
	<div class="container">
		<h6><b><i class="bi bi-play"></i> 2-1. Add Playlist 메뉴 클릭</b></h6><br>
			<div class="text-center text-white"><img src="./resources/assets/images/addPL1.jpg" width=700 height=300></div>
	</div>
	<div style = "padding: 30px;"></div>
	<div class="container">
		<h6><b><i class="bi bi-play"></i> 2-2. 등록할 플레이리스트 정보 입력</b></h6><br>
			<div class="text-center text-white"><img src="./resources/assets/images/addPL2.jpg" width=800 height=500></div>
	</div>
	<div style = "padding: 30px;"></div>
	<div class="container">
		<h6><b><i class="bi bi-play"></i> 2-3. 등록을 완료하면 끝!</b></h6><br>
			<div class="text-center text-white"><img src="./resources/assets/images/addPL3.jpg" width=800 height=500></div>
	</div>
	<div style = "padding: 50px;"></div>
	<jsp:include page="footer.jsp" />
</body>
</html>