<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@ include file="../include/header.jsp" %>

</head>
<body>
	<h1>Login Page</h1>
	<h2><c:out value="${error}"/> </h2>
    <form method="post" action="/login">
        <table>
            <tr>
                <td>아이디 : </td>
                <td><input type="text" name="userid" id="id" placeholder="아이디 입력" required></td>
            </tr>
            <tr>
                <td>비밀 &nbsp; 번호 : </td>
                <td><input type="password" name="userpwd" id="pwd"  placeholder="비밀번호 입력" required></td>
            </tr>
            <tr>
                <td>로그인 버튼을 누르면 메인페이지로 이동 : </td>
                <td><input type="submit" name="login" id="login" placeholder="로그인 입력" required></td>
            </tr>
            <tr>
                <td>회원가입 버튼을 누르면 회원가입페이지로 이동 : </td>
                <td><input type="button" name="join" id="join" placeholder="회원가입 입력" required></td>
            </tr>
            <tr>
                <td colspan='2' align="center"><input type="submit" value="로그인" ></td>
            </tr>				
        </table>
     </form>
</body>
</html>
<%@ include file="../include/footer.jsp" %>
