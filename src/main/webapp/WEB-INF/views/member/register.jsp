<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<script type="text/javascript" src="/resources/js/jquery-3.4.1.min.js"></script>
<!-- Font Icon -->
<link rel="stylesheet"
	href="/resources/login/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="/resources/login/css/style.css">
<meta name="robots" content="noindex, follow">
<title>회원 가입</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
	/*************************************************************
	 * 파라미터 디코딩 // Usage: b64_to_utf8('4pyTIMOgIGxhIG1vZGU='); // "✓ à la mode"
	 *************************************************************/
	function b64_to_utf8(str) {
		return decodeURIComponent(escape(window.atob(str)));
	}

	/*=======================
		
	 * 주소검색 api
	 =======================*/
	function jusoPopup() {
		popWindow = window.open(
				"http://yessoft.iptime.org:8983/app/search/urlJusoSearch.do",
				"pop", "width=450,height=600, scrollbars=yes, resizable=yes");
	}

	/*=======================
	 * iframe 이벤트 리스너
	 =======================*/
	window.addEventListener("message", receiveMessage, false);

	/*=======================
	 * 메시지 이벤트
	 =======================*/
	function receiveMessage(event) {
		// 주소 api서버의 주소를 확인후 주소 api 서버가 아니면 리턴
		//if (event.origin !== "http://192.168.0.83:8983") return;

		// event.data == message
		//console.log(event.data);

		//base64를 디코딩후 Json변환
		var juso = JSON.parse(b64_to_utf8(event.data));

		console.log(juso)
		setJuso(juso);

		//팝업창 닫기
		popWindow.close();

	}

	/*=======================
	 * 받아온 주소 입력
	 =======================*/
	function setJuso(juso) {
		$("#addr1").val(juso.roadFullAddr);
		$("#postno").val(juso.zipNo);

	}
	/*=======================
	 * 비밀번호,이용약관 체크 후 전송
	 =======================*/
	function inputCheck() {
		let pass = $("#pass").val();
		let re_pass = $("#re_pass").val();
		//비밀번호 확인 : 비밀번호 다르면 return false;
		if (pass !== re_pass) {
			$("#pass").val("");
			$("#re_pass").val("");
			$("#pass").focus();
			alert("비밀번호가 일치하지 않습니다. 확인하세요!")
			return false;
		}
		//이용약관 체크
		if (!$('#agree-term').is(':checked')) {
			alert("이용약관 동의해 주세요.")
			return false;
		}
		//이상없으면 
		return true;
	}
	
	function fn_idChk() {
		$.ajax({
			url : "/member/login",
			type : "POST",
			dataType : "json",
			data : {"userId" : $("userId").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value","Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
</script>
</head>
<body>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">

			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">회원가입</h2>
						<form method="POST" class="register-form"  id="register-form"
							action="/register" onsubmit="return inputCheck()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="name" placeholder="이름" required />
							</div>

							<div class="form-group">
								<label for="addr"><i class="zmdi zmdi-city"></i></label> <input
									type="text" name="addr1" id="addr1" placeholder="주소" required
									onclick="jusoPopup()" />
							</div>
							<div class="form-group">
								<label for="addr"><i class="zmdi zmdi-city"></i></label> <input
									type="text" name="addr2" id="addr2" placeholder="상세주소" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="text" name="postno" id="postno" placeholder="우편번호"
									readonly />
							</div>
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
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="비밀번호 재입력" required />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>회원가입시
									<a href="#" class="term-service">이용약관에</a> 동의합니다.</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="" id=""
									class="form-submit" value="회원가입" />
							</div>
							<div class="form-group has-feedback">
								<button class="cancel btn btn-danger" type="reset" id="reset">취소</button>
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="/resources/login/images/signup-image.jpg"
								alt="sign up image">
						</figure>
						<a href="login" class="signup-image-link">로그인 페이지로</a>
					</div>
				</div>
			</div>
		</section>

	</div>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%@ include file="../include/footer.jsp"%>