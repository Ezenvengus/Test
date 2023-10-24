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
<script type="text/javascript">
/*************************************************************
 * 파라미터 디코딩 // Usage: b64_to_utf8('4pyTIMOgIGxhIG1vZGU='); // "✓ à la mode"
 *************************************************************/
function b64_to_utf8( str ) {
    return decodeURIComponent(escape(window.atob( str )));
}

/*=======================
* 주소검색 api
=======================*/
function jusoPopup() {
    popWindow = window.open("http://127.0.0.1:8983/app/search/urlJusoSearch.do", "pop", "width=450,height=600, scrollbars=yes, resizable=yes");
}

/*=======================
* iframe 이벤트 리스너
=======================*/
window.addEventListener("message", receiveMessage, false);

/*=======================
* 메시지 이벤트
=======================*/
function receiveMessage(event)
{
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
 * 비밀번호,이용약관 체크 후 전송
 =======================*/

	function inputCheck(){
		let.pass=${"pass"}.val();
		let re_pass=${"#re_pass"}.val();
		//비밀번호 확인 : 비밀번호 다르면 return false;
		if(pass!=re_pass){
			${"#pass"}.val("");
			${"#re_pass"}.val("");
			${"#pass"}.focus();
			alert("비밀번호가 일치하지 않습니다. 확인하세요!");
			return false;
		}
		//이용약관 체크	
		if(!$('agree-term').is('checkof')){
			alert("이용약관 동의해 주세요.")
			return false;
		}
		//이상없으면 
		return true;
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
						<form method="POST" class="register-form" id="register-form"
							action="" onsubmit="return inputCheck()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="이름" required />
							</div>
							
							<div class="form-group">
								<label for="addr"><i class="zmdi zmdi-city"></i></label> <input
									type="text" name="addr" id="addr" placeholder="주소" />
							</div>
							<div class="form-group">
								<label for="addr"><i class="zmdi zmdi-city"></i></label> <input
									type="text" name="detailaddr" id="detailaddr" placeholder="상세주소" />
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="id" id="id" placeholder="ID" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="비밀번호" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="비밀번호 재입력" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>회원가입시
									<a href="#" class="term-service">이용약관에</a> 동의합니다.</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="회원가입" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="/resources/login/images/signup-image.jpg"
								alt="sign up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">로그인 페이지로</a>
					</div>
				</div>
			</div>
		</section>

	</div>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>