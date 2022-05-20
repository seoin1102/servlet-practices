<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border="1" cellspacing="0" cellppading="10">
		<tr> 
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>
		
		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>
	</table>
	<br/>
	<img src="http://localhost:8080/helloweb/assets/images/치코리타.jpg" style="width:120px"/>
	<img src="/helloweb/assets/images/치코리타.jpg"style="width:120px" />
	<img src="assets/images/치코리타.jpg" style="width:120px"/>
	<br/>
	<a href = "/helloweb/hello?name=안대혁">hello로 가기</a>
	<br/>
	<a href = "form.jsp">폼로 가기</a>
	
	
	
</body>
</html>