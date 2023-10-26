<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/cart.css">
<section id="main">
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
  </aside> <!-- aside left -->
  <section id="right">
    <h2 id="cart_title">
      <span>SHOPPING CART</span> 장바구니
    </h2>
    <div id="process">
      <img src="/resources/img/process.png">
    </div>

    <table>
      <tr class="title">
        <th>선택</th>
        <th>상품명</th>
        <th>판매가</th>
        <th>수량</th>
        <th>적립금</th>
        <th>배송비</th>
        <th>합계</th>
      </tr>
      
      <tr class="items">
        <td class="col1"><input type="checkbox"></td>
        <td class="col2">
         ${pvo.p_name}
        </td>
        <td class="col3">${pvo.price}원</td>
        <td class="col4">${cnt}개</td>
        <td class="col5">100P</td>
        
        <td class="col6">3,000원</td>
        <td class="col7">${pvo.price*cnt+3000}원</td>    
      </tr>        
      <tr class="total_price">
        <td colspan="7" >
          [상품 구매 금액] : ${pvo.price*cnt} + [배송비] : 3,000 = [총구매액] : <span>${pvo.price*cnt+3000}원</span>
        </td> 
      </tr>           
      <tr class="order_status_box">
        <td colspan="3">
          <div class="order_status">
            <p><span>${userid}님의 총 주문 합계 금액입니다</span></p>
        </div>
      </td>  
      <td colspan="4">   
        <ul>
                <li class="col1">[상품 구매 금액]:</li>
                <li class="col2">${pvo.price*cnt}원</li>
              </ul>
              <ul>
                <li class="col1">배송비:</li>
                <li class="col2">3,000원</li>
              </ul>
              <ul>
                <li class="col1"><span>총 주문 합계 금액</span></li>
                <li class="col2"><span>${pvo.price*cnt+3000}원</span></li>
              </ul>
            </div>
          </div> <!-- order_status -->
        </td>
      </tr>
    </table>
    <ul id="order_buttons">
      <li><img src="/resources/img/order_button1.gif" onclick="insertBuy()"></li>
      <li><img src="/resources/img/order_button2.gif"></li>
      <li><a href="/"><img src="/resources/img/order_button3.gif"></a></li>
      <li><img src="/resources/img/order_button4.gif"></li>
      <li><img src="/resources/img/order_button5.gif"></li>
      <li><img src="/resources/img/order_button6.gif"></li>
    </ul>     
  </section> <!-- section right -->
</section> <!-- section main -->
<script type="text/javascript">
	function insertBuy() {
		//let cnt= document.getElementById("cnt").value;
		//console.log(cnt);
		location.href = "insertBuy?p_no=${pvo.p_no}&seq=${pvo.cate_seq}&cnt=${cnt}";
	}
</script>
  <div class="clear"/>
  <%@ include file="../include/footer.jsp"%>