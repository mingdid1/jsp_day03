<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day03.memberDAO"%>
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
	modifyInfo.jsp<br>
	<%
		memberDAO dao = new memberDAO();
		memberDTO dto = dao.info(request.getParameter("id"));
	%>
	<h1>정보 수정</h1>
	
	<form action="changeUser.jsp" method="post">
		아이디 : <input type="text" name="id" readonly value=<%= dto.getM_id() %>><br>
		비밀번호 : <input type="text" name="pwd" placeholder="<%= dto.getM_pwd() %>"><br>
		이름 : <input type="text" name="name" placeholder="<%= dto.getM_name() %>"><br>
		주소 : <input type="text" name="addr" placeholder="<%= dto.getM_addr() %>"><br>
		<input type="submit" value="완료">
	</form>

<%@ include file="../default/footer.jsp" %>
</body>
</html>