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
    <link rel="stylesheet" href="./css/d_rv_chart.css">
    <link rel="stylesheet" href="./css/css.css">
</head>
<body>
    <%@include file="./header_af.jsp" %>

<%@include file="./sidebar_de.jsp" %>

<br>
<br>
<div class="order_title">
<strong>디자이너</strong>
</div>

<div class="bar"></div>

<div class="board_wrap">
    <div class="board_title">
        <Strong>디자이너 예약목록</Strong>
    </div>
    <div class="board_list_wrap">
        <div class="board_list">
            <div class="top">
                <div class="num">일시</div>
                <div class="num">매장</div>
                <!-- <div class="title"> 상품이름</div> -->
                <div class="num">고객</div>
                <div class="num">시술</div>
                <div class="num">예약현황</div>
                <div class="num"></div>
                <div class="num"></div>
            </div>
            <div class="product_1"> 
                <div class="num">2023.03.12 14:00</div>
                <div class="num"><a href="./view.jsp">강남점</a></div>
                <div class="num">김수진</div>
                <div class="num">파마</div>
                <div class="num">시술 완료</div>
                <div class="num"><input type="submit" value="취소하기"></div>
                <div class="num"><a href="./review_detail_list.jsp"><input type="submit" value="댓글남기기"></a></div>
            </div>
            <div class="product_1"> 
              <div class="num">2023.03.12 15:00</div>
              <div class="num"><a href="./view.jsp">강남점</a></div>
              <div class="num">김승우</div>
              <div class="num">염색</div>
              <div class="num">시술 완료</div>
              <div class="num"><input type="submit" value="취소하기"></div>
              <div class="num"><a href="./review_detail_list.jsp"><input type="submit" value="댓글남기기"></a></div>
          </div>
          <div class="product_1"> 
            <div class="num">2023.03.12 16:00</div>
            <div class="num"><a href="./view.jsp">강남점</a></div>
            <div class="num">김연우</div>
            <div class="num">커트</div>
            <div class="num">예약 완료</div>
            <div class="num"><input type="submit" value="취소하기"></div>
            <div class="num"><a href="./review_detail_list.jsp"><input type="submit" value="댓글남기기"></a></div>
        </div>
        <div class="product_1"> 
          <div class="num">2023.03.12 17:00</div>
          <div class="num"><a href="./view.jsp">강남점</a></div>
          <div class="num">서지현</div>
          <div class="num">매직</div>
          <div class="num">예약 완료</div>
          <div class="num"><input type="submit" value="취소하기"></div>
          <div class="num"><a href="./review_detail_list.jsp"><input type="submit" value="댓글남기기"></a></div>
      </div>
      <div class="product_1"> 
        <div class="num">2023.03.12 18:00</div>
        <div class="num"><a href="./view.jsp">강남점</a></div>
        <div class="num">박종찬</div>
        <div class="num">커트</div>
        <div class="num">예약 완료</div>
        <div class="num"><input type="submit" value="취소하기"></div>
        <div class="num"><a href="./review_detail_list.jsp"><input type="submit" value="댓글남기기"></a></div>
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

   <%@include file="./footer.jsp" %>



</body>
</html>