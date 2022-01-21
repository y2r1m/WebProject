<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="icon" type="image/x-icon" href="./resources/assets/music-note-beamed.svg" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link href="./resources/css/styles.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>플레이리스트 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />
	
	<header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-3"><fmt:message key="title" /></h1>
                </div>
            </div>
    </header>
	<div style = "padding: 5px;">
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
		</div>
		<form name="newPlaylist" action="./processAddPlaylist.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class ="form-group row">
				<label class="col-sm-2"><fmt:message key="playlistId" /></label>
				<div class="col-sm-3">
					<input type="text" id="playlistId" name="playlistId" class="form-control" placeholder="<fmt:message key="playlistId_ph" />" width=200px;>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="playlistName" /></label>
				<div class="col-sm-3">
					<input type="text" id="playlistName" name="playlistName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="thumbnailImg" /></label>
				<div class="col-sm-5">
					<input type="file" name="thumbnailImg" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="melon_songIds" /></label>
				<div class="col-sm-5">
					<textarea name="melon_songIds" cols="50" rows="2" class="form-control" placeholder="<fmt:message key="songIds_ph" />"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="genie_songIds" /></label>
				<div class="col-sm-5">
					<textarea name="genie_songIds" cols="50" rows="2" class="form-control" placeholder="<fmt:message key="songIds_ph" />"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bugs_songIds" /></label>
				<div class="col-sm-5">
					<textarea name="bugs_songIds" cols="50" rows="2" class="form-control" placeholder="<fmt:message key="songIds_ph" />"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="youtubeLink" /></label>
				<div class="col-sm-3">
					<input type="url" name="youtubeLink" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-outline-dark mt-auto" value="<fmt:message key="button" />" onclick="CheckAddPlaylist()">
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
</body>
</html>