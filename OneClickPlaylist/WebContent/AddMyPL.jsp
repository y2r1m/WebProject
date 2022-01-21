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
      response.sendRedirect("exceptionNoPlaylistId.jsp");
   }

   ArrayList<Playlist> goodsList = dao.getAllPlaylists();
   Playlist goods = new Playlist();
   for (int i = 0; i < goodsList.size(); i++) {
      goods = goodsList.get(i);
      if (goods.getPlaylistId().equals(id)) {          
         break;
      }
   }
   
   ArrayList<Playlist> list = (ArrayList<Playlist>) session.getAttribute("MyPLlist");
   if (list == null) { 
      list = new ArrayList<Playlist>();
      session.setAttribute("MyPLlist", list);
   }

   int cnt = 0;
   Playlist goodsQnt = new Playlist();
   for (int i = 0; i < list.size(); i++) {
      goodsQnt = list.get(i);
      if (goodsQnt.getPlaylistId().equals(id)) {
         cnt++;
         int orderQuantity = goodsQnt.getQuantity() + 1;
         goodsQnt.setQuantity(orderQuantity);
      }
   }

   if (cnt == 0) { 
      goods.setQuantity(1);
      list.add(goods);
   }

   response.sendRedirect("playlist.jsp?id=" + id);
%>

