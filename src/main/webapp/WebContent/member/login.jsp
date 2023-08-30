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

	login.jsp<br>
	<h1>로그인 페이지 입니다</h1>
	
	<form action="chkuser.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호">
		<input type="submit" value="로그인">
	</form>
	
	<a href="register.jsp">회원가입</a>
	
<%@ include file="../default/footer.jsp" %>
</body>
</html>