<%@page import="day03.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result1.jsp<br>
	<%
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		
		memberDTO dto = new memberDTO();
		dto.setId(id);
		dto.setPwd(pwd);
	%>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
</body>
</html>