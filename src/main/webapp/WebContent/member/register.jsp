<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../default/header.jsp" %>
	register.jsp<br>
	<h1>회원 가입</h1>
	
	<form action="regChk.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="text" name="name"><br>
		<input type="text" name="addr"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>