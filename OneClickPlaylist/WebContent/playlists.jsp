<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>One Click Playlist Share</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets/music-note-beamed.svg" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
    </head>
    <body>
       	<jsp:include page="menu.jsp" />
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">One Click Playlist</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Share Your Playlists!</p>
                </div>
            </div>
        </header>
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <%@ include file="dbconn.jsp"%>
<%
            	String sql = "select * from playlist";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
            %>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="./resources/assets/images/<%=rs.getString("p_imgName")%>" alt="..." />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder"><%=rs.getString("p_name")%></h5>
                                    <h6><%=rs.getString("p_description")%></h6>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="./playlist.jsp?id=<%=rs.getString("p_id")%>">
                                One Click Link <i class="bi bi-link-45deg"></i></a></div>
                            </div>
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
            </div>
        </section>
        <jsp:include page="footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
