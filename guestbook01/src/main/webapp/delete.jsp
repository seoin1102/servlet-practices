<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no2 = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	long no= Long.parseLong(no2);
	vo.setNo(no);
	vo.setPassword(password);

	new GuestbookDao().delete(vo);
	response.sendRedirect("index.jsp");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공했습니다!!</h1>
</body>
</html>