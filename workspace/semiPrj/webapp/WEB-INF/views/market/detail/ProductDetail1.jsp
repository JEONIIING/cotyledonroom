<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/resources/css/market/product.css">
    <link rel="stylesheet" href="/resources/css/common/sidebar.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header_be.jsp" %>      
	<%@include file="/WEB-INF/views/common/sidebar_mk.jsp" %>

    <div>
      <h1>MARKET</h1>
	</div>
  	<div class="bar"></div>
    
    <div class="inner">
       <tr>
          <td>
   		    <div class="detail" style="display: inline-block;">
           		<div >
                    <a href="/market/productlist" class="btnback"><span>BACK TO SHOP</span></a><br><br>
                    <h1 class="title">누베스 알바 600ml - 펌 영양샴푸</h1><br>
                    <p class="price">65,000원</p><br>
                    <div class="txtbox">
                        <p><b>펌 영양샴푸</b></p><p><br></p>
                        <p>(1) 펌 모발을 탄력 있고 탄탄하게 유지</p><br>
                        <p>(2) 열 손상으로부터 모발 보호</p><br>
                        <p>(3) 손상된 모발에 수분과 영양 공급</p><br>
                        <p>(4) 모발에 볼륨감 부여</p><br>
                    </div>
                      <div class="bottombtns">
                        <div class="btnbox">
                            <select id="productCnt" type="number" class="selectarr">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <tr>
                                <td><button class="btnbuy" onclick=""><a href="/member/cart">장바구니</a></button></td>
                                <td><button class="btnbuy" onclick="gotoBuy()">바로 구매</button></td>
                            </tr>
                        </div></div><br><br><br></div></div></td>
                        <td>
                            <img src="/resources/image/product/베레플루비아상세.png" alt="">
                        </td>
                    </tr>
                    </div>
        <div class="detail_img">
            <div class="prodviewEdit"><img src="/resources/image/product/누베스알바/1.png" alt=""></div>
            <div class="prodviewEdit"><img src="/resources/image/product/누베스알바/2.png" alt=""></div>
            <div class="prodviewEdit"><img src="/resources/image/product/누베스알바/3.png" alt=""></div>
            <div class="prodviewEdit"><img src="/resources/image/product/누베스알바/4.png" alt=""></div>
        </div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>