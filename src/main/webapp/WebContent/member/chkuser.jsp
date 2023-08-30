<%@page import="day03.memberDAO"%>
<%@page import="java.util.ArrayList"%>
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
	chkuser.jsp<br>
	<jsp:useBean id="dto" class="day03.memberDTO"/>
	<jsp:setProperty property="*" name="dto"/>

	<%
		request.setCharacterEncoding("utf-8");
	
		memberDAO dao = new memberDAO();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		int result = dao.chkuser(id, pwd);
		
		if (result == 0) {
			session.setAttribute("id", id); %>
			<script type="text/javascript">
				alert("로그인 성공");
				location.href="successLogin.jsp";
			</script>
		<%}else if (result == 1){ %>
			<script type="text/javascript">
				alert("비밀번호 틀림");
				location.href="login.jsp";
			</script>
		<%}else { %>
			<script type="text/javascript">
				alert("로그인 실패");
				location.href="login.jsp";
			</script>			
		<%} %>
	
</body>
</html>