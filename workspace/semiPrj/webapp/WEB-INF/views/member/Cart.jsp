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
  <%@include file="/WEB-INF/views/common/header_af.jsp" %>
    <%@include file="/WEB-INF/views/common/sidebar_my.jsp" %>

<br>
<br>
<div class="order_title">
<strong>My 쇼핑</strong>
</div>

<div class="bar"></div>

<div class="board_wrap">
    <div class="board_title">
        <Strong>장바구니</Strong>
    </div>
    <div class="board_list_wrap">
        <div class="board_list">
            <div class="top">
                <div class="writer">선택</div>
                <div class="num">상품번호</div>
                <div class="product">상품</div>
                <div class="writer">가격</div>
                <div class="writer">수량</div>
                <div class="writer"></div>
            </div>
          <c:forEach items="${cartList}" var="cvo">
            <div class="product_1"> 
              <div class="num"><input type="checkbox"></div>
                <div class="num">${cvo.no}</div>
                <div class="num2"><img class="cart_img" src="/resources/image/${cvo.src}.png" alt=""></div>
                <div class="num">${cvo.name }</div>
                <div class="num">${cvo.price }</div>
                <div class="num">${cvo.amount }</div>
                <div class="num"><button onclick="location.href='${cvo.src}.jsp'"></button></div>
            </div>
           </c:forEach>
        </div>


        <div class="board_page">
            <c:if test="${ pageVo.currentPage > 1 }">
                    <a href="/board/list?page=${pageVo.currentPage-1}">이전</a>
                </c:if>

                <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">
                    <c:if test="${pageVo.currentPage == i}">
                        <span>${i}</span>
                    </c:if>
                    <c:if test="${pageVo.currentPage != i}">
                        <a href="/board/list?page=${i}">${i}</a>
                    </c:if>
                </c:forEach>

                <c:if test="${ pageVo.currentPage < pageVo.maxPage }">
                    <a href="/board/list?page=${pageVo.currentPage+1}">다음</a>
                </c:if>
        </div>


        <div class="bt_wrap">
            <a href="/market/productlist" class="on">돌아가기</a>
            <!-- <a href="#">수정</a> -->
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>