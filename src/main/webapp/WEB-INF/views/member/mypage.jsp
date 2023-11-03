<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="/resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="/resources/login/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="/resources/login/css/style.css">
</head>
<title>mypage</title>

<body>
	
    <h1 align="center">MYPAGE</h1>
	<p>ID: ${vo.userid }</p>
	<p>USERNAME: ${vo.username}</p>
	<p>ADDR : ${vo.addr1}</p>
	<p>P_NAME:CNT : ${sessionScope.p_name} ${sessionScope.p_cnt}</p>

	<a href="/" class="signup-image-link">메인 페이지로</a>

</body>

</html>
<%@ include file="../include/footer.jsp"%>