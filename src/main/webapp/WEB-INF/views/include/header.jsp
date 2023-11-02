<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KidultStore</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
	<header>
		<section id="top">
			<a id="logo" href="/"><img src="/resources/img/logo.jpg"
				width="182" height="39"></a>
			<div id="search">
				<div id="search_title">SEARCH</div>
				<div id="search_form">
					<input type="text">
				</div>
				<div id="search_button">
					<img src="/resources/img/btn_search.gif">
				</div>
			</div>
			<nav id="top_menu">
				<ul>
					<c:choose>
						<c:when test="${sessionScope.userid==null}">
							<li class="green"><a href="login">로그인</a></li>
							<li class="green"><a href="register">회원가입</a></li>
						</c:when>
						<c:otherwise>
      		${sessionScope.userid}님
      		<li class="green"><a href="logout">로그아웃</a></li>
							<li><a href="mypage">마이페이지</a></li>
							<li><a href="membermodify">회원정보수정</a></li>
							<li><a href="#">이용안내</a></li>
							<li><a href="#">고객센터</a></li>
						</c:otherwise>
					</c:choose>

				</ul>
			</nav>
			<!-- top_menu -->
			<div class="clear"></div>
		</section>
		<!-- section top -->
		<nav id="main_menu">

			<ul>
				<li><a href="category">상세 페이지 </a></li>
				<li><a href="#">장바구니</a></li>
				<li><a href="#">고객 갤러리 </a></li>
				<li><a href="#">주문배송</a></li>
				<li><a href="#">자주 하는 질문 </a></li>
			</ul>
		</nav>
	</header>
</body>