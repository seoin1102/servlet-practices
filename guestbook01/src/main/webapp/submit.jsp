<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import= "java.time.LocalDateTime"%>
<%@ page import= "java.time.format.DateTimeFormatter"%>
  
<%
	LocalDateTime now = LocalDateTime.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

	request.setCharacterEncoding("utf-8");
	String name= request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	String datetime = now.format(formatter).toString();
   
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	vo.setDatetime(datetime);
	new GuestbookDao().insert(vo);
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