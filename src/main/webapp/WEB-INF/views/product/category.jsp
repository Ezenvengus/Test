<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<section id="main">
	<section id="cat1">
		<div id="cat_title">상품</div>
	</section>
	<div class="clear"></div>

	<section id="new">
		<h3>
			<span>MD</span>
			추천상품
		</h3>
    <c:forEach items="${list}" var="vo">
    <div class="item">
      <ul>
        <li><a href="detail?p_no=${vo.p_no}&seq=${seq}"><img src="imgDown?filename=${vo.imagefile}"  width="206" height="204"></a></li>
        <li class="subject">${vo.p_name}</li>
        <li class="price"><fmt:formatNumber value="${vo.price}"/>원</li>
      </ul>
    </div>
    </c:forEach>
	</section>
	<!-- section new -->

	<div class="clear"></div>

</section>
<!-- section main -->

<%@ include file="../include/footer.jsp"%>