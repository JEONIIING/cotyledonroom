<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="./css/productListstyle.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/main.css">
</head>
<body>
<%@include file="./header_af.jsp" %>
      
<%@include file="./sidebar_mk.jsp" %>

    <div>
        <h1>MARKET</h1>
    </div>
    <div class="bar"></div>
    
      <section>
        <table cellspacing ="50">
          <tr><td><div class="menu">ESSENCE</div></td></tr>
          <tr>
            <td><a href=""><img class="product_img" src="./image/칼리고 150ml - 두피 에센스.png" alt=""></a></td>
            <td><a href=""><img class="product_img" src="./image/레미시오 100ml.png" alt=""></a></td>
            <td><a href=""><img class="product_img" src="./image/미티스 100ml.png" alt=""></a></td>
          </tr>
          <tr class="product_name">
            <td><a>칼리고 150ml</a></td>
            <td><a>레미시오 100ml</a></td>
            <td><a>미티스 100ml</a></td>
          </tr>
    </table>
</section>

  <%@include file="./footer.jsp" %>

  </body>
</html>