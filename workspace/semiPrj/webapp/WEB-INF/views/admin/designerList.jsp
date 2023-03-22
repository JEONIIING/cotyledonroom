<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 목록</title>
    <link rel="stylesheet" href="css/D_css.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="./css/a_main.css">
    <link rel="stylesheet" href="./css/designerForm.css">
</head>
<body>
		<%@ include file="./header_am.jsp" %>
		
		<div style="height: px;">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>디자이너 목록</Strong>
          <p>디자이너 계정 목록입니다.</p>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num">번호</div>
                  <div class="title">이름</div>
                  <div class="writer">계정명</div>
                  <div class="gender">근무 매장</div>
                  <div class="count">탈퇴여부</div>
              </div>
              <div>
                  <div class="num">5</div>
                  <div class="title"><a href="./designerInfo.jsp">리아</a></div>
                  <div class="writer">yec220409</div>
                  <div class="gender">역삼역점</div>
                  <div class="count">N</div>
              </div>
              <div>
                  <div class="num">4</div>
                  <div class="title"><a href="view.html">브라운</a></div>
                  <div class="writer">gan230102</div>
                  <div class="gender">강남점</div>
                  <div class="count">N</div>
              </div>                
              <div>
                  <div class="num">3</div>
                  <div class="title"><a href="view.html">호이</a></div>
                  <div class="writer">inc200615</div>
                  <div class="gender">인천점</div>
                  <div class="count">Y</div>
              </div>                <div>
                  <div class="num">2</div>
                  <div class="title"><a href="view.html">글로리</a></div>
                  <div class="writer">bus210830</div>
                  <div class="gender">일산점</div>
                  <div class="count">Y</div>
              </div>                <div>
                  <div class="num">1</div>
                  <div class="title"><a href="view.html">지노</a></div>
                  <div class="writer">dea230213</div>
                  <div class="gender">부천역점</div>
                  <div class="count">N</div>
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
              <a href="./designerForm.jsp" class="on">계정등록</a>
              <!-- <a href="#">수정</a> -->
          </div>
      </div>
  </div> 
  </div>

  <br><br><br><br><br>
		
		<%@ include file="./footer.jsp" %>

</body>
</html>