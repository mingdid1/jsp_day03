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
	delete.jsp<br>
	<%
		memberDAO dao = new memberDAO();
		int result = dao.delete(request.getParameter("id"));
		if (result == 1){%>
			<script type="text/javascript">
				alert("삭제되었습니다");
				location.href="login.jsp";
			</script>
	<% } %>
</body>
</html>