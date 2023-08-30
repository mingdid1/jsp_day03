<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result3.jsp<br>
	<jsp:useBean id="dto" class="day03.memberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	id : <%= dto.getM_id() %><br>
	pwd : <%= dto.getM_pwd() %><br>
	name : <%= dto.getM_name() %><br>
</body>
</html>