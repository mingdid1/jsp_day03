<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result2.jsp<br>
	<jsp:useBean id="dto" class="day03.memberDTO"/>
	<!-- memberDTO wlrmdto = new memberDTO(); -->
	
	<jsp:setProperty property="id" name="dto"/>
	<!-- dto.setId(req.getParameter(id)) -->
	<jsp:setProperty property="pwd" name="dto"/>
	<!-- dto.setPwd(req.getParameter(pwd)) -->
	
	id : <jsp:getProperty property="id" name="dto"/>
	<!-- dto.getId() -->
	<br>
	pwd : <jsp:getProperty property="pwd" name="dto"/>
	<!-- dto.getPwd() -->
	
	<hr>
	
	<%
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
	%>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
</body>
</html>