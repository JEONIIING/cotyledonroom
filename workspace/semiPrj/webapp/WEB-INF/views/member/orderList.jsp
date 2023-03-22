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
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/S_orderList.css">
</head>
<body>
    <%@ include file="./header_af.jsp" %>
    <%@ include file="./sidebar_my.jsp" %>
<br>
<br>
<div class="order_title">
<strong>My 쇼핑</strong>
</div>

<div class="bar"></div>
    
<div class="board_wrap">
    <div class="board_title">
        <Strong>주문목록</Strong>
    </div>
    <div class="board_list_wrap">
        <div class="board_list">
            <div class="top">
                <div class="num">주문번호</div>
                <!-- <div class="title"> 상품이름</div> -->
                <div class="writer" >상품이름</div>
                <div class="writer">수량</div>
                <div class="writer">가격</div>
                <div class="date">날짜</div>
                <div class="count">배송상태</div>
                <div class="count">환불여부</div>
            </div>
            <div>
               
                <div class="num"><a href="./orderhistory.jsp">12345</a></div>
                <div class="num"><a href="./orderhistory.jsp">샴푸</a></div>
                <div class="num">1</div>
                <div class="num">500,000</div>
                <div class="num">2023.03.16</div>
                <div class="num">배송중</div>
                <div class="num">X</div>
            </div>
            <div>
               
              <div class="num"><a href="#">12345</a></div>
              <div class="num"><a href="#">샴푸</a></div>
              <div class="num">1</div>
              <div class="num">500,000</div>
              <div class="num">2023.03.16</div>
              <div class="num">배송중</div>
              <div class="num">X</div>
          </div>
          <div>
               
            <div class="num"><a href="#">12345</a></div>
            <div class="num"><a href="#">샴푸</a></div>
            <div class="num">1</div>
            <div class="num">500,000</div>
            <div class="num">2023.03.16</div>
            <div class="num">배송중</div>
            <div class="num">X</div>
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


       
    </div>
</div>


   <%@ include file="./footer.jsp" %>



</body>
</html>