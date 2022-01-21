<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Playlist"%>
<%@ page import="dao.PlaylistRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("playlists.jsp");
		return;
	}

	PlaylistRepository dao = PlaylistRepository.getInstance();
	
	Playlist playlist = dao.getPlaylistById(id);
	if (playlist == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Playlist> MyPLList = (ArrayList<Playlist>) session.getAttribute("MyPLlist");
	Playlist goodsQnt = new Playlist();
	for (int i = 0; i < MyPLList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = MyPLList.get(i);
		if (goodsQnt.getPlaylistId().equals(id)) {
			MyPLList.remove(goodsQnt);
		}
	}

	response.sendRedirect("MyPlaylists.jsp");
%>
