<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/detail.css">
<section id="main" >
 <aside id="left">
    <div id="cat_title">
      BUY DETAIL
    </div>
    <ul>
     <c:forEach items="${cate}" var="cmap">
	<li><a href="category?seq=${cmap.get('SEQ')}">${cmap.get('CATE_NAME')}</a></li>
      </c:forEach>
    </ul>
    <div id="customer">
    <img src="/resources/img/customer.png">
    </div>
  </aside>
<section id="right">
 <section id="explanation">
      <h3>주문 완료</h3>
      <h2>${pvo.details}</h2>
      <div id="explanation_box" >
        <ul>
          <li>
            <div class="col1">- 품명</div>
            <div class="col2">${pvo.p_name}</div>
            <div class="clear"></div>				
          </li>
          <li>
           <div class="col1">- 남은수량</div>
              <div class="col2">${pvo.inventory}</div>
              <div class="clear"></div>			
          </li>
          <li>
            <div class="col1">- 제품번호</div>
              <div class="col2">${pvo.p_no}</div>
              <div class="clear"></div>				
          </li>
          <li>
            <div class="col1">- 가격</div>
            <div class="col2">${pvo.price*cnt+3000}원</div>
            <div class="clear"></div>				
          </li>
          <li>
           <a href="/"><div class="col1"><span style="color:red;">- 홈페이지</span></div></a>
           <div class="col2"> <--- </div>
            <div class="clear"></div>				
          </li>
        </ul>
      </div> <!-- explanation_box -->
    </section>
   </section> 
   <div class="clear"></div>
  </section>
<%@ include file="../include/footer.jsp"%>