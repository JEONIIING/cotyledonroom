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
    <link rel="stylesheet" href="/resources/css/admin/L_css.css">
</head>
<body>
         <%@ include file="/WEB-INF/views/common/header_be.jsp" %>
  <%@include file="/WEB-INF/views/common/sidebar_com.jsp" %>

<div class="aaaa">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>QNA 게시판</Strong>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num">번호</div>
                  <div class="title"> 제목</div>
                  <div class="writer">글쓴이</div>
                  <div class="date">작성일</div>
                  <div class="count">답변</div>
              </div>
              <div>
                  <div class="num">5</div>
                  <div class="title"><a href="/communication/QNA_view_c">글 제목이 들어갑니다.</a></div>
                  <div class="writer">김이름</div>
                  <div class="date">2023.03.15</div>
                  <div class="count"><button><a href="/communication/QNA_answerList_c">답변일람</a></button></div>
              </div>
              <div>
                  <div class="num">4</div>
                  <div class="title"><a href="/communication/QNA_view_c">글 제목이 들어갑니다.</a></div>
                  <div class="writer">김이름</div>
                  <div class="date">2023.03.15</div>
                  <div class="count"><button><a href="/communication/QNA_answerList_c">답변일람</a></button></div>
              </div>                
              <div>
                  <div class="num">3</div>
                  <div class="title"><a href="/communication/QNA_view_c">글 제목이 들어갑니다.</a></div>
                  <div class="writer">김이름</div>
                  <div class="date">2023.03.15</div>
                  <div class="count"><button><a href="/communication/QNA_answerList_c" >답변일람</a></button></div>
              </div>                <div>
                  <div class="num">2</div>
                  <div class="title"><a href="/communication/QNA_view_c">글 제목이 들어갑니다.</a></div>
                  <div class="writer">김이름</div>
                  <div class="date">2023.03.15</div>
                  <div class="count"><button><a href="/communication/QNA_answerList_c">답변일람</a></button></div>
              </div>                <div>
                  <div class="num">1</div>
                  <div class="title"><a href="/communication/QNA_view_c">글 제목이 들어갑니다.</a></div>
                  <div class="writer">김이름</div>
                  <div class="date">2023.03.15</div>
                  <div class="count"><button><a href="/communication/QNA_answerList_c">답변일람</a></button></div>
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
              <a href="/communication/QNA_write_c" class="on">등록</a>
              <!-- <a href="#">수정</a> -->
          </div>
      </div>
  </div>
  
</div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>




</body>
</html>