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
<title>회원정보수정</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancel").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPwd").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPwd").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
<body>
	<h1 align="center">회원정보수정</h1>

	<section id="container">
		<form action="/membermodify" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userName">userName :</label> <input
					class="form-control" type="text" id="userName" name="userName"
					value="${member.userName}" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userId">ID :</label> <input
					class="form-control" type="text" id="userId" name="userId"
					value="${member.userId}" />
			</div>
			<div class="myPage-row">
			  <label>현재 비밀번호 :</label>
			   <input type="password" name="currentpwd" id="userpwd" name="userpwd" />
			</div>
			<div class="myPage-row">
			  <label>새 비밀번호 :</label>
			   <input type="password" name="newpwd" id="userpwd" name="userpwd" />
			</div>
			<div class="myPage-row">
			  <label>새 비밀번호 확인 :</label>
			   <input type="password" name="newpwdconfirm" id="userpwd" name="userpwd" />
			</div>
		    <div id="errormessage"></div>

			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
				<button class="form-submit" type="reset" id="reset">취소</button>
				
			</div>
			<a href="/" class="signup-image-link">메인 페이지로</a>
		</form>
	</section>
</body>
</html>
<%@ include file="../include/footer.jsp"%>