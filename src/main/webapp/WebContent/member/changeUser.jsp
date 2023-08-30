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
	changeUser.jsp<br>
	<%
		request.setCharacterEncoding("utf-8");
	
		memberDAO dao = new memberDAO();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		int result = dao.change(id, pwd, name, addr);
		if (result == 1){%>
			<script type="text/javascript">
				alert("수정성공");
				location.href="memberInfo.jsp";
			</script>
		<%}else { %>
			<script type="text/javascript">
				alert("수정실패");
				location.href="memberInfo.jsp";
			</script>
		<% } %>
</body>
</html>