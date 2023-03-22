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
    <link rel="stylesheet" href="./css/orderList.css">
    <link rel="stylesheet" href="./css/L_css.css">
</head>
<body>
    
    <%@ include file="./header_af.jsp" %>
    <%@ include file="./sidebar_com.jsp" %>
    
<br>

    
<div class="board_wrap">
    <div class="board_title">
        <Strong>리뷰 상세</Strong>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            
            <div class="info">
                <dl>
                    <dt>번호</dt>
                    <dd>1</dd>
                </dl>
                <dl>
                    <dt>닉네임</dt>
                    <dd>김이름</dd>
                </dl>
                <dl>
                    <dt>매장</dt>
                    <dd>강남점</dd>
                </dl>
                <dl>
                    <dt>디자이너</dt>
                    <dd>주리</dd>
                </dl>
                <dl>
                    <dt>시술</dt>
                    <dd>여성 디자인펌</dd>
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
                <div>
                    <img src="./image/shop3.jpg" alt="" style="width: 300px;"> <br>
                </div>
                <div>
                    마음에 쏙 듭니다 <br>
                    마음에 쏙 듭니다 <br>
                    마음에 쏙 듭니다 <br>
                    마음에 쏙 듭니다
                </div>
            </div>
            
        </div>
        <div class="bt_wrap">
            <a href="./review_list.jsp" class="on">목록</a>
            <a href="./review_edit.jsp">수정</a>
            <a href="#">삭제</a>
        </div>
        <div id="form-commentInfo">
            <div id="comment-count" style="font-size: 20px;">댓글 <span id="count">0</span></div>
            <input id="comment-input" placeholder="댓글을 입력해 주세요." style="width: 800px; height: 30px;">
            <button id="submit" style="width: 50px; height: 35px;">등록</button>
        </div>
        <div id=comments style="font-size: 15px;">
        </div>
    </div>
</div>

<br><br><br><br>


<script src="./js/comment.js"></script>


</div>

    <%@ include file="./footer.jsp" %>



</body>
</html>