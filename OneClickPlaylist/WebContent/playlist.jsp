<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Playlist"%>
<%@ page import="dao.PlaylistRepository"%>
<%@ page import="java.sql.*"%>
<%@ page errorPage="exceptionNoPlaylistId.jsp"%>
<html>
<head>
<link href="./resources/css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<title>플레이리스트 상세 정보</title>
<script type="text/javascript">
	function addToMyPL() {
		if (confirm("My Playlists에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Playlist 정보</h1>
            </div>
        </div>
    </header>
    <div style = "padding: 45px;"></div>
	<div class="container">
		<div class="row">
		<%@ include file="dbconn.jsp"%>
		<%
			 String id = request.getParameter("id");
			 String sql = "select * from playlist where p_id=?";
		     pstmt = conn.prepareStatement(sql);
		     pstmt.setString(1, id);
		     rs = pstmt.executeQuery();
		     while (rs.next()) {
	
		%>
			<div class="col-md-5">
				<img src="./resources/assets/images/<%=rs.getString("p_imgName")%>" style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3 class="fw-bolder"><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p> <b>플레이리스트 코드 : </b><span class="badge bg-dark text-white"> <%=rs.getString("p_id")%></span>

				<!-- 곡 정보 추가 ? -->
				
				<form name="addForm" action="./AddMyPL.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-outline-dark mt-auto" onclick="addToMyPL()"><i class="bi bi-heart-fill"></i> Add to My Playlists &raquo;</a> 
					<a href="./MyPlaylists.jsp" class="btn btn-outline-dark mt-auto"><i class="bi bi-headphones"></i> My Playlists &raquo;</a> 
					<a href="./playlists.jsp" class="btn btn-dark mt-auto"> All Playlists &raquo;</a>
					<div style = "padding: 5px;"></div>
					<a class="btn btn-outline-success" href=<%=rs.getString("p_melonLink")%> role="button">Melon <i class="bi bi-play-circle"></i></a>
					<a class="btn btn-outline-primary" href=<%=rs.getString("p_genieLink")%> role="button">Genie <i class="bi bi-play-circle"></i></a>
					<a class="btn btn-outline-danger" href=<%=rs.getString("p_bugsLink")%> role="button">Bugs <i class="bi bi-play-circle"></i></a>
					<a class="btn btn-danger" href=<%=rs.getString("p_youtubeLink")%> role="button">YouTube <i class="bi bi-play-circle"></i></a>
				</form>
			</div>
		</div>
		<%
            }
            
	         if (rs != null)
	            rs.close();
	         if (pstmt != null)
	            pstmt.close();
	         if (conn != null)
	            conn.close();
         %>
	</div>
	<div style = "padding: 32px;"></div>
	<%@ include file="footer.jsp"%>
</body>
</html>