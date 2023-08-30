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
	memberInfo.jsp<br>
	
	<jsp:useBean id="dao" class="day03.memberDAO"/>
	<%
		ArrayList<memberDTO> list = dao.getList();
	%>
	<h1>회원 목록</h1>
	<table border="1">
		<tr>
			 <th>아이디</th> <th>이름</th> <th>주소</th>
		</tr>
		<% for(memberDTO d: list){ %>
		<tr>
			<td><%= d.getM_id() %></td>
			<td>
				<a href="userInfo.jsp?id=<%= d.getM_id()%>">
					<%= d.getM_name() %>
				</a>
			</td>
			<td><%= d.getM_addr() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>