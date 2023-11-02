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
<body>
	<h1 align="center">회원정보수정</h1>
	<div class="">
		<form action="/membermotify" method="post">
			<table>
				<tr>
					<td>* 아이디</td>
					<td><input type="text" id="userId" name="id"
						value="${member.userid}" readonly></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="password" id="password"
						value=""></td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" name="username"
						value="${member.userName }" readonly></td>
				</tr>

				<tr>
					<td>* 우편번호</td>
					<td><input type="text" name="postno" value="${post }"></td>
				</tr>
				<tr>
					<td>* 주소</td>
					<td><input type="text" name="addr1" value="${address }"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="수정하기">
						<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
						<button class="cancel btn btn-danger" type="button">취소</button></td>
				</tr>
			</table>

		</form>
	</div>

	<script>
		function removeMember() {
			if (window.confirm("탈퇴하시겠습니까?")) {
				location.href = "member/membermodify";
			}

		}
	</script>
</body>
</html>
<%@ include file="../include/footer.jsp"%>