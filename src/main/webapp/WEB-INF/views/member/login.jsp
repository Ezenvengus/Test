<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="/resources/js/jquery-3.4.1.min.js"></script>

</head>
<title>로그인</title>
<body>
	<main>
		<div style="width:100px; height:800px">
			<form action="login" method="post" id="loginForm">
				<div class="form-group label-floating">
					<label class="control-label">아이디</label> <input name="userid"
						type="text" id="userid" class="form-control"
						value="${cookie.rememberID.value}">
				</div>
				<div class="form-group  label-floating">
					<label class="control-label">비밀번호</label> <input name="userpwd"
						type="password" id="userpwd" class="form-control">
				</div>
				<div class="checkbox">
					<label> 
					<input type="checkbox" name="userid"> 아이디저장
					</label> 
					<label> 
					<input type="checkbox" name="useCookie"> 자동로그인
					</label>
				</div>
				<button type="submit" class="btn btn-default">로그인</button>
			</form>
		</div>
	</main>
</body>
</html>
<%@ include file="../include/footer.jsp"%>