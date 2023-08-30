<%@page import="day03.memberDAO"%>
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
	regChk.jsp<br>	
	<%
		request.setCharacterEncoding("utf-8");

		memberDAO dao = new memberDAO();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		int result = dao.reg(id, pwd, name, addr);
		if (result == 1){%>
			<script type="text/javascript">
				alert("가입성공");
				location.href="login.jsp";
			</script>
		<%}else { %>
			<script type="text/javascript">
				alert("가입실패");
				location.href="login.jsp";
			</script>
		<% } %>
</body>
</html>