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
<title>MYPAGE</title>
</head>
<body>
	
    <h1 align="center" style="color:blue">*MYPAGE*</h1>
	<h3 align="center" style="color:lime">ID(아이디): ${vo.userid }</h3>
	<h3 align="center" style="color:purple">USERNAME(이름): ${vo.username}</h3>
	<h3 align="center" style="color:orange">ADDRESS(주소) : ${vo.addr1}</h3>
    
	<h2 align="center"><a href="/" class="signup-image-link">메인 페이지로</a></h2>
    
</body>

</html>
<%@ include file="../include/footer.jsp"%>