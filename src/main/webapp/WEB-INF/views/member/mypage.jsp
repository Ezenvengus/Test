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
<script>
	$(function(){
		if(${msg ne null}){
			alert('${msg}');
		};
		
		if($("#userpwdForm").submit(function(){
			if($("#pwd").val() !== $("#pwd2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pwd").val("").focus();
				$("#pwd2").val("");
				return false;
			}else if ($("#pwd").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;
			}else if($.trim($("#pwd").val()) !== $("#pwd").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		}));
	})
</script>
<title>MYPAGE</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>My Page</h3>
			</div>
			<div>
				<form id="IDForm" action="../member/login" method="post">
					<p>
						<label>ID</label> <input class="w3-input" type="text" id="id"
							name="userid" readonly value="${ member.userid }">
					</p>
			
				</form>
				<br />
				<form id="pwdForm" action="../member/login" method="post">
					<input type="hidden" name="userpwd" value="${ member.userpwd }">
					<p>
						<label>Password</label> <input class="w3-input" id="password"
							name="userpwd" type="password" required>
					</p>
					<p>
						<label>New Password</label> <input class="w3-input" id="password"
							name="userpwd" type="password" required>
					</p>
					<p>
						<label>Password Confirm</label> <input class="w3-input" type="password"
							id="pwd2" type="password" required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn"
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호
							변경</button>
					</p>
					<button type="button" id="modify-btn" onclick="location.href='${contextPath }/member/membermodify=${info.id }'">수정하기 &gt;</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp"%>