<%@page import="day03.memberDAO"%>
<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	
	userInfo.jsp<br>
	<h1>개인 정보</h1>
	
	<%
		memberDAO dao = new memberDAO();
		memberDTO dto = dao.info(request.getParameter("id"));
	%>

	아이디 : <%= dto.getM_id() %><br>
	비밀번호 : <%= dto.getM_pwd() %><br>
	이름 : <%= dto.getM_name() %><br>
	주소 : <%= dto.getM_addr() %><br>

	<a href="modifyInfo.jsp?id=<%=dto.getM_id() %>"><button>수정</button></a>
	<a href="delete.jsp?id=<%=dto.getM_id() %>"><button>삭제</button></a>

<%@ include file="../default/footer.jsp" %>
</body>
</html>