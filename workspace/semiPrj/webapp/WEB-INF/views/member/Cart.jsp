<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COTYLEDON ROOM</title>
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/common/sidebar.css">
    <link rel="stylesheet" href="/resources/css/member/cart.css">
    <link rel="stylesheet" href="/resources/css/common/css.css">
</head>
<body>
<div>
  <%@include file="/WEB-INF/views/common/header_be.jsp" %>
    <%@include file="/WEB-INF/views/common/sidebar_my.jsp" %>

<br>
<br>
<main>
<div class="order_title">
<strong>My 쇼핑</strong>
</div>

<div class="bar"></div>

<div class="board_wrap">
    <div class="board_title">
        <Strong>장바구니</Strong>
    </div>
    <div class="board_list_wrap">
        <table class="board_list">
            <thead>
            	<tr>
	                <td class="writer">상품번호</td>
	                <td class="num">상품</td>
	                <td class="product">사진</td>
	                <td class="writer">가격</td>
	                <td class="writer">수량</td>
	                <td class="writer">삭제</td>
            	</tr>
            </thead>
            <tbody>
    	      <c:forEach items="${cartList}" var="cvo">
            	<tr> 
	                <td class="num">${cvo.pNo}</td>
	                <td class="num">${cvo.name }</td>
	                <td class="num"><img class="cart_img" src="/resources/image/product/${cvo.src}/0.png" alt=""></td>
	                <td class="num">${cvo.price }</td>
	                <td class="num">${cvo.amount }</td>
	                <td class="num"><button onclick="deleteCart();">삭제하기</button></td>
					<form method="post" action="/member/cartdelete" id="delete">
						<input id="delete" name="delete" type="hidden" value="${cvo.no}">
					</form>
            	</tr>
					 </c:forEach>
            </tbody>
        </table>


        <div class="page-area">
            <c:if test="${ pageVo.currentPage > 1 }">
                    <a href="/member/cart?page=${pageVo.currentPage-1}">이전</a>
                </c:if>

                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">
                    <c:if test="${pageVo.currentPage == i}">
                        <span>${i}</span>
                    </c:if>
                    <c:if test="${pageVo.currentPage != i}">
                        <a href="/member/cart?page=${i}">${i}</a>
                    </c:if>
 				</c:forEach>

                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
                    <a href="/member/cart?page=${pageVo.currentPage+1}">다음</a>
                </c:if>
        </div>


        <div class="bt_wrap">
            <a href="/market/productlist" class="on">돌아가기</a>
            <!-- <a href="#">수정</a> -->
        </div>
        <form method="post" action="/kakaoPay">
    		<div><button>카카오페이로 결제하기</button></div>
		</form>
    </div>
</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</main>
</div>
</body>
</html>


<script>
	function deleteCart(){
		  document.getElementById('delete').submit();
	}
</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('가맹점식별코드'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakao',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '주문명 : 아메리카노',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: 2000,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: '이름',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>