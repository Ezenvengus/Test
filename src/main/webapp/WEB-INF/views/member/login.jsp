<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>로그인</title>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">

			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">로그인</h2>
							<div>메시지:${error}</div>
						<form method="post" class="register-form" id="register-form"
							action="/login" onsubmit="return inputCheck()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="userid" id="id" placeholder="ID" required />
							</div>

							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="userpwd" id="pass" placeholder="비밀번호"
									required />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="" id="" class="form-submit"
									value="로그인" />
								<button class="form-submit" type="reset" id="reset">취소</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>
	
</body>
</html>
<%@ include file="../include/footer.jsp"%>