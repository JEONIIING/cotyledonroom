<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COTYLEDON ROOM</title>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="./css/css.css">
</head>
<body>
	<%@include file="./header_af.jsp" %>
	
    <%@include file="./sidebar_my.jsp" %>

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
                <!-- <div class="title"> 상품이름</div> -->
                <div class="product">상품</div>
                <div class="writer">수량</div>
                <div class="writer">가격</div>
                <div class="writer">배송비</div>
            </div>
            <div class="product_1"> 
              <div class="num"><input type="checkbox"></div>
                <div class="num"><a href="./view.jsp">1</a></div>
                <div class="num2"><img class="cart_img" src="./image/로제아 하비투 600ml.png" alt=""></div>
                <div class="num">로제아 하비투</div>
                <div class="num">2</div>
                <div class="num">65,000</div>
                <div class="num">5,000</div>
            </div>
            <div class="product_1"> 
              <div class="num"><input type="checkbox"></div>
                <div class="num"><a href="./view.jsp">9</a></div>
                <div class="num2"><img class="cart_img" src="./image/다이슨 헤어드라이기.png" alt=""></div>
                <div class="num">다이슨 헤어드라이기</div>
                <div class="num">1</div>
                <div class="num">500,000</div>
                <div class="num">0</div>
            </div>
            <div class="product_1"> 
              <div class="num"><input type="checkbox"></div>
                <div class="num"><a href="./view.jsp">10</a></div>
                <div class="num2"><img class="cart_img" src="./image/세도 심플렉스 45g.png" alt=""></div>
                <div class="num">로제아 하비투</div>
                <div class="num">3</div>
                <div class="num">19,000</div>
                <div class="num">5,000</div>
            </div>
            
           
        </div>


        <div class="board_page">
            <a href="#" class="bt first"><<</a>
            <a href="#" class="bt prev"><</a>
            <a href="#" class="num on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
            <a href="#" class="num">4</a>
            <a href="#" class="num">5</a>
            <a href="#" class="bt next">></a>
            <a href="#" class="bt last">>></a>
        </div>


        <div class="bt_wrap">
            <a href="./ProductList.jsp" class="on">돌아가기</a>
            <!-- <a href="#">수정</a> -->
        </div>
    </div>
</div>

<%@include file="./footer.jsp" %>

</body>
</html>