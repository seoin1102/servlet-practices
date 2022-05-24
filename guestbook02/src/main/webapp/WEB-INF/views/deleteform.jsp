<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no2 = request.getParameter("no");
	long no= Long.parseLong(no2);
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath() %>/gb?a=delete&no=<%=vo.getNo()%>">
		<input type='hidden' name="no" >
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<td><input type="submit" value="확인"></td>
				<td><a href="<%=request.getContextPath() %>/gb">메인으로 돌아가기</a></td>
			</tr>
		</table>
	</form>
</body>
</html>