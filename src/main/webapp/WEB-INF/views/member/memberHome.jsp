<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

	<title>마이 페이지</title>
	<%@ include file="../include/header.jsp"%>
</head>
<body>
<h1>
	회원 메인 페이지/로그인 한 경우만 오는 페이지 
</h1>
<p>${sessionScope.userid }</p>
<p>${sessionScope.username}</p>
<a href="logout" style="color: red;"> 로그아웃</a>
<br>
<a href="/" style="color: blue;">홈페이지</a>
</body>
<%@ include file="../include/footer.jsp"%>
</html>
