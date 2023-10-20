<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/detail.css">

<section id="main" >
 <aside id="left">
    <div id="cat_title">
      CATEGORY ITEM
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
  <!-- aside left -->
    <section id="right">
    <section id="summary">
      <h3><span>POINT MURAL</span> 제품 상세 </h3>
        <section id="summary1">
        <div class="image">
          <li>
          <a href="detail?p_no=${pvo.p_no}&seq=${seq}">
          <img src="imgDown?filename=${pvo.imagefile}" width="312px" height="312px"></a>
          </li>
        </div>
        <div class="/resources/buttons" >
          <img src="/resources/img/btn_pre.gif" >
          <img src="/resources/img/btn_show_big.gif">
          <img src="/resources/img/btn_next.gif">
        </div>
      </section>  <!-- section summary1 -->
      <section id="summary2">
        <h3> ${pvo.p_name}</h3>
        <div class="item">
          <ul>
            <li>
              <div class="col1">판매가</div>
              <div class="col2">${pvo.price}원</div>
              <div class="clear"></div> 
            </li>
            <li>
              <div class="col1">부품수</div>
              <div class="col2">${pvo.parts}개</div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="col1">제조년</div>
              <div class="col2">${pvo.regdate}</div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="col1">남은수량</div>
              <div class="col2">${pvo.inventory}개</div>
              <div class="clear"></div>
            </li>
            <li>
              <div class="col1"></div>
              <div class="col2">
                <select>
                  <option>== 옵션 선택 ==</option>
                  <option>1개</option>
                  <option>2개</option>
                </select>
              </div>
              <div class="clear"></div>
            </li>
          </ul>
        </div> <!-- item -->
         <!-- size -->
        <ul class="buttons">
          <li><img src="/resources/img/btn_buy_now.gif"></li>
          <li><a href="cart?p_no=${pvo.p_no}&seq=${seq}&state=0"><img src="/resources/img/btn_cart.gif"></a></li>
        </ul>			
      </section> <!-- section summary2 -->
      <div class="clear"></div>
    </section> <!-- section summary -->
    <section id="explanation">
      <h3>상품 설명</h3>
      <h2>${pvo.details}</h2>
      <div id="explanation_box" >
        <ul>
          <li>
            <div class="col1">- 품명</div>
            <div class="col2">${pvo.p_name}</div>
            <div class="clear"></div>				
          </li>
          <li>
           <div class="col1">부품수</div>
              <div class="col2">${pvo.parts}개</div>
              <div class="clear"></div>			
          </li>
          <li>
            <div class="col1">제조년</div>
              <div class="col2">${pvo.regdate}</div>
              <div class="clear"></div>				
          </li>
          <li>
            <div class="col1">- 가격</div>
            <div class="col2">${pvo.price}원</div>
            <div class="clear"></div>				
          </li>
          <li>
            <div class="col1">- 문의</div>
            <div class="col2"><span>031)123-1234</span></div>
            <div class="clear"></div>				
          </li>
        </ul>
      </div> <!-- explanation_box -->
    </section> <!--	section explanation -->
    <section id="required">
      <h3>유의 사항</h3>
      <dl>
        <dt> ○ 배송 </dt>
        <dd>- 배송 지역 : 전국</dd>
        <dd>- 배송 비용 : 개별 배송을 제외하고 20,000원 미만입니다.</dd>
        <dd>- 배송 기간 : 2~3일</dd>
      </dl>
    </section>  <!-- section required -->
  </section> <!-- section right -->
  <div class="clear"></div>
</section> <!-- section main -->

<%@ include file="../include/footer.jsp"%>


