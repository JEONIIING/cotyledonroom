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
    <link rel="stylesheet" href="/resources/css/common/comment.css">
    <link rel="stylesheet" href="/resources/css/admin/L_css.css">
</head>
<body>
         <%@ include file="/WEB-INF/views/common/header_be.jsp" %>

     <%@include file="/WEB-INF/views/common/sidebar_com.jsp" %>

<div class="board_wrap">
    <div class="board_title">
        <Strong>QNA</Strong>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <div class="title">
                글 제목 들어감요

            </div>
            <div class="info">
                <dl>
                    <dt>번호</dt>
                    <dd>1</dd>
                </dl>
                <dl>
                    <dt>글쓴이</dt>
                    <dd>김이름</dd>
                </dl>
                <dl>
                    <dt>작성일</dt>
                    <dd>2023.03.15</dd>
                </dl>
                <dl>
                    <dt>조회</dt>
                    <dd>33</dd>
                </dl>

            </div>
            <div class="cont">
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요<br>
                글내용이 들어갑니다요
            </div>
        </div>
        <div class="bt_wrap">
            <a href="/communication/QNA_list_c" class="on">목록</a>
            <a href="/communication/QNA_edit_c">수정</a>
            <a href="/communication/QNA_edit_c">삭제</a>            
        </div>

    </div>

  <div id="form-commentInfo">
      <div id="comment-count" style="font-size: 20px;">댓글 <span id="count">0</span></div>
      <input id="comment-input" placeholder="댓글을 입력해 주세요." style="width: 800px; height: 30px;">
      <button id="submit" style="width: 50px; height: 35px;">등록</button>
  </div>
  <div id=comments style="font-size: 15px;">
  </div>
  <script src="/resources/js/comment.js"></script>


  </div>


  

</section>

<%@include file="/WEB-INF/views/common/footer.jsp" %>




</body>
</html>