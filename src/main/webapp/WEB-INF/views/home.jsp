<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="include/header.jsp" %>
<section id="main">
  <section id="cat1">
    <div id="cat_title">
      HOME
    </div>
    <ul>
    <c:forEach items="${cate}" var="cmap">
	<li><a href="category?seq=${cmap.get('SEQ')}">${cmap.get('CATE_NAME')}</a></li>
      </c:forEach>
    </ul>
  </section> <!-- section cat1 -->
  <section id="cat2">
    <img src="imgDown?filename=${mainimg.imagefile}" width="538" height="361">
  </section> <!-- section cat2 -->
  <section id="cat3">
    <div id="latest_notice">
      <ul>
      <c:forEach items="${noti}" var="nmap">
      <!--   <li>${nvo.TITLE}</li> --> 
        <li> ${nmap.get('TITLE')} </li>
        </c:forEach>
      </ul>
    </div>

  </section> <!-- section cat3 -->

  <div class="clear"></div>

  <section id="special_shop">
    <ul>
    <c:forEach items="${spimgs}" var="spimg"> 
      <li><img src="imgDown?filename=${spimg.imagefile}" width="225" height="270"></li>
 	</c:forEach>
    </ul>
  </section> <!-- section special_shop -->
  <div class="clear"></div>

  <section id="new">
    <h3><span>NEW ARRIVAL</span> 재고 입고 </h3>
    <c:forEach items="${newimgs}" var="newimg">
    <div class="item">
      <ul>
        <li><img src="imgDown?filename=${newimg.imagefile}"  width="206" height="204"></li>
        <li class="subject">${newimg.p_name}</li>
        <li class="price"><fmt:formatNumber value="${newimg.price}"/>원</li>
      </ul>
    </div>
    </c:forEach>
  </section> <!-- section new -->

  <div class="clear"></div>

</section> <!-- section main -->

<%@ include file="include/footer.jsp" %>