<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품관리</title>
    <link rel="stylesheet" href="css/A_css.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="./css/a_main.css">
    <link rel="stylesheet" href="./css/designerForm.css">
    <link rel="stylesheet" href="./css/admin_product_list.css">
    <script defer src="./js/admin_product_list.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
		<%@ include file="./header_am.jsp" %>
		
		<div style="height: px;">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>상품목록</Strong>
          <p>고객에게 판매할 상품들의 목록입니다.</p>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num"><input type="checkbox" id="check-all"></div>
                  <div class="title"> 상품 정보</div>
                  <div class="name"> 상품명</div>
                  <div class="writer">상품가격</div>
                  <div class="date">상품코드</div>
                  <div class="count">카테고리</div>
              </div>
              <div>
                  <div class="num"><input type="checkbox" class="check-item"></div>
                  <div class="title">
                      <a href="./admin_product_info.jsp"><img class="p_img" src="./image/네불라 115g - 헤어 무스 에센스.png" alt="이미지"></a>
                  </div>
                  <div class="name"><a href="./admin_product_info.jsp">네불라 115g</a></div>
                  <div class="writer">24,000</div>
                  <div class="date">A083F1</div>
                  <div class="count">에센스</div>
              </div>
              <div>
                <div class="num"><input type="checkbox" class="check-item"></div>
                <div class="title">
                    <img class="p_img" src="./image/누베스 알바 600ml.png" alt="이미지">
                </div>
                <div class="name"><a href="view.html">누베스 알바 600ml</a></div>
                <div class="writer">68,000</div>
                <div class="date">A083F1</div>
                <div class="count">에센스</div>
              </div>                
              <div>
                <div class="num"><input type="checkbox" class="check-item"></div>
                <div class="title">
                    <img class="p_img" src="./image/다이슨 고데기.png" alt="이미지">
                </div>
                <div class="name"><a href="view.html">다이슨 고데기</a></div>
                <div class="writer">329,000</div>
                <div class="date">A083F1</div>
                <div class="count">기계</div>
              </div>                <div>
                <div class="num"><input type="checkbox" class="check-item"></div>
                <div class="title">
                    <img class="p_img" src="./image/다이슨 헤어드라이기.png" alt="이미지">
                </div>
                <div class="name"><a href="view.html">다이슨 헤어드라이기</a></div>
                <div class="writer">613,000</div>
                <div class="date">A083F1</div>
                <div class="count">기계</div>
              </div>                <div>
                <div class="num"><input type="checkbox" class="check-item"></div>
                <div class="title">
                    <img class="p_img" src="./image/레미시오 100ml.png" alt="이미지">
                </div>
                <div class="name"><a href="view.html">레미시오 100ml</a></div>
                <div class="writer">19,000</div>
                <div class="date">A083F1</div>
                <div class="count">에센스</div>
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
              <a href="./admin_product.html" class="on">등록</a>
              <button type="button" onclick="button_delete();" class="delete">삭제</button>
          </div>
      </div>
  </div> 
  </div>
		
		<%@ include file="./footer.jsp" %>

</body>
</html>