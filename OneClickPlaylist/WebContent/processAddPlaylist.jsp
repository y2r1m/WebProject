<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\Users\\USER\\Downloads\\OneClickPlaylist\\WebContent\\resources\\assets\\images"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());

	String playlistId = multi.getParameter("playlistId");
	String playlistName = multi.getParameter("playlistName");
	String description = multi.getParameter("description");
	String melon_songIds = multi.getParameter("melon_songIds");
	String genie_songIds = multi.getParameter("genie_songIds");
	String bugs_songIds = multi.getParameter("bugs_songIds");
	String youtubeLink = multi.getParameter("youtubeLink");
	
	String[] melon_songId = melon_songIds.split(" ");
	String[] genie_songId = genie_songIds.split(" ");
	String[] bugs_songId = bugs_songIds.split(" ");
	String m_tmp = "";
	String g_tmp = "";
	String b_tmp = "";
	for (int i=0; i<melon_songId.length; i++) {
		m_tmp = m_tmp + melon_songId[i] + ",";
		g_tmp = g_tmp + genie_songId[i] + ";";
		b_tmp = b_tmp + bugs_songId[i] + ",";
	}
	melon_songIds = m_tmp.substring(0, melon_songIds.length()-1);
	genie_songIds = g_tmp.substring(0, genie_songIds.length()-1);
	bugs_songIds = b_tmp.substring(0, bugs_songIds.length()-1);
	
	String melonLink = "melonapp://play?cType=1&cList=" + melon_songIds;
	String genieLink = "https://www.genie.co.kr/player/shareProcessV2?xgnm=" + genie_songIds;
	String bugsLink = "https://music.bugs.co.kr/newPlayer?trackId=" + bugs_songIds;
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	String sql = "insert into playlist values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, playlistId);
	pstmt.setString(2, playlistName);
	pstmt.setString(3, description);
	pstmt.setString(4, melonLink);
	pstmt.setString(5, genieLink);
	pstmt.setString(6, bugsLink);
	pstmt.setString(7, youtubeLink);
	pstmt.setString(8, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
 	response.sendRedirect("playlists.jsp");
%>
