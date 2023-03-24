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
    <link rel="stylesheet" href="/resources/css/reservation/R_css.css">
    <link rel="stylesheet" href="/resources/css/reservation/review_list.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header_be.jsp" %>
    <%@ include file="/WEB-INF/views/common/sidebar_com.jsp" %>
	
	<div class="aaaa">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>리뷰 게시판</Strong>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num">번호</div>
                  <div class="picture">사진 미리보기</div>
                  <div class="title"> 내용</div>
                  <div class="memberNick">닉네임</div>
                  <div class="shop">매장</div>
                  <div class="designer">디자이너</div>
              </div>
              <div>
                  <div class="num">7</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진1.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">커트랑 드라이 받았는데 너무 맘에듭니다.</a></div>
                  <div class="memberNick">도리도리</div>
                  <div class="shop">역삼역점</div>
                  <div class="designer">리아</div>
              </div>
              <div>
                  <div class="num">6</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진2.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">친절하게 설명해주시고 커트 길이 꼼꼼하게 체크해주셔서 단골될 것 같습니다. 감사합니다 디자이너 쌤!</a></div>
                  <div class="memberNick">미우</div>
                  <div class="shop">일산점</div>
                  <div class="designer">글로리</div>
              </div>
              <div>
                  <div class="num">5</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진3.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">기분 전환겸 파마 했는데 컬 잘나온것같아요. 굿굿</a></div>
                  <div class="memberNick">라라링</div>
                  <div class="shop">부천점</div>
                  <div class="designer">지노</div>
              </div>
              <div>
                  <div class="num">4</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진4.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">앞머리 냈는데 길이가 딱 적당해요. 감삼당</a></div>
                  <div class="memberNick">김이름</div>
                  <div class="shop">대전점</div>
                  <div class="designer">비모</div>
              </div>                
              <div>
                  <div class="num">3</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진5.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">탈색부터 염색까지 오래걸렸지만 색감 맘에듭니다. 짱짱</a></div>
                  <div class="memberNick">부농분홍</div>
                  <div class="shop">부산점</div>
                  <div class="designer">구찌</div>
              </div>                
              <div>
                  <div class="num">2</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진6.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">커트랑 펌 받았어요. bb </a></div>
                  <div class="memberNick">사과</div>
                  <div class="shop">강남점</div>
                  <div class="designer">베로</div>
              </div>                
              <div>
                  <div class="num">1</div>
                  <div class="picture"><img class="reviewphoto" src="/resources/image/리뷰사진7.jpg" alt="이미지"></div>
                  <div class="title"><a href="/communication/reviewdetaillist">다이앤컷 받았어요. 깔끔하니 만족합니다.</a></div>
                  <div class="memberNick">냐나냥</div>
                  <div class="shop">인천점</div>
                  <div class="designer">호이</div>
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
              <a href="/communication/reviewenroll" class="on">등록</a>
              <!-- <a href="#">수정</a> -->
          </div>
      </div>
  </div>
  

</section>
	
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>


</body>
</html>