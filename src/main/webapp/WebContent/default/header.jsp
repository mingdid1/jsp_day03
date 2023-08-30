<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	header.jsp<br>
	<h1>CARE LAB</h1>
	<hr>
	<a href="../member/index.jsp">HOME</a>
	<% 
		if(session.getAttribute("id") == null){
	%>
		<a href="../member/login.jsp">회원정보</a>
		<a href="login.jsp">로그인</a>
	<% } else {%>
		<a href="../member/memberInfo.jsp">회원정보</a>
		<a href="logout.jsp">로그아웃</a>
	<% } %>
	<hr>
</body>
</html>