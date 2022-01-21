<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Playlist"%>
<%@ page import="dao.PlaylistRepository"%>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<%
	String MyPLId = session.getId();
%>
<title>My Playlists</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">My Playlists</h1>
            </div>
        </div>
    </header>
    <div style = "padding: 45px;"></div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="right"><a href="./deleteMyPL.jsp?MyPLId=<%=MyPLId%>" class="btn btn-danger">Delete</a></td>
				</tr>
			</table>
		</div>
			<table class="table table-hover">
				<tr>
					<th>코드</th>
					<th>이름</th>
					<th>설명</th>
					<th>One Click Link</th>
					<th></th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Playlist> MyPLList = (ArrayList<Playlist>) session.getAttribute("MyPLlist");
					if (MyPLList == null)
						MyPLList = new ArrayList<Playlist>();

					for (int i = 0; i < MyPLList.size(); i++) { // 상품리스트 하나씩 출력하기
						Playlist playlist = MyPLList.get(i);
				%>
				<tr>
					<td><%=playlist.getPlaylistId()%></td>
					<td><%=playlist.getPlaylistName()%></td>
					<td><%=playlist.getDescription()%></td>
					<td><a href="./playlist.jsp?id=<%=playlist.getPlaylistId()%>" class="btn btn-outline-dark mt-auto">
					One Click Link <i class="bi bi-link-45deg"></i></a></td>
					<td><a href="./removeMyPL.jsp?id=<%=playlist.getPlaylistId()%>" class="badge bg-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
			</table>
			<a href="./playlists.jsp" class="btn btn-dark mt-auto"> &laquo;메인 페이지</a>
		</div>
	<div style = "padding: 32px;"></div>
	<jsp:include page="footer.jsp" />
</body>
</html>
