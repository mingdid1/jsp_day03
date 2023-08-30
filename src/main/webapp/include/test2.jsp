<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2.jsp<br>
	<%@ include file="test1.jsp" %>
	-> 합치고 번역하기때문에 test1에 있는 변수 사용가능
	
	<hr>
	<jsp:include page="test3.jsp"></jsp:include>
	-> 페이지 별로 따로 번역 test3의 변수 사용불가
	<hr>
	
	<h3>내용 입니다</h3>
	test1 : <%= msg %><br>
	test3 : <%= m %><br>
	
	
</body>
</html>