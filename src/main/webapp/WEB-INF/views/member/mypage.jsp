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

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">

			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">mypage</h2>
						<form method="post" class="register-form" id="register-form"
							action="/mypage" onsubmit="return inputCheck()">
							<div class="form-group">
								<label for="mypage"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="mypage" id="" placeholder="mypage" required />
							</div>

							<div class="form-group">
								<label for="id"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="userid" id="id" placeholder="ID" required />
							</div>
							<div class="form-group">
								<label for="username"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="username" id="name" placeholder="USERNAME"
									required />
							</div>
							<div class="form-group">
								<label for="addr1"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="addr1" id="addr1" placeholder="addr1"
									required />
							</div>
							<div class="form-group">
								<label for="p_name:cnt"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="p_name:cnt" id="p_name:cnt" placeholder="p_name:cnt"
									required />
							</div>
							<div class="signup-image">
								<figure>
									<img src="/resources/login/images/signup-image.jpg"
										alt="sign up image">
								</figure>
								<a href="/" class="signup-image-link">메인페이지로 이동</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</section>

	</div>

</body>
<script type="text/javascript">
function mypage() {
	let userId = document.getElementById("userid");
	let userName = document.getElementById("username");
	let Addr1 = document.getElementById("addr1");
	let P_NAME:CNT = document.getElementById("P_NAME:CNT");
	if (id.value == "") {
		alert("아이디를 입력하세요.");
		id.focus();
		return false;
	}
	
	return true;
	//document.getElementById("frmBuy").submit();
}
</script>
</html>
<%@ include file="../include/footer.jsp"%>