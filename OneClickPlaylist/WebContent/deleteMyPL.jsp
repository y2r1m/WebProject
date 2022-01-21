<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Playlist"%>
<%@ page import="dao.PlaylistRepository"%>

<%
	String id = request.getParameter("MyPLId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("MyPlaylists.jsp");
		return;
	}

	session.invalidate();
	
	response.sendRedirect("MyPlaylists.jsp");
%>
