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
    <link rel="stylesheet" href="./css/L_css.css">
</head>
<body>
          <%@include file="./header_be.jsp" %>

    <%@include file="./sidebar_com.jsp" %>

<div class="board_wrap">
    <div class="board_title">
        <Strong>QNA</Strong>
    </div>
    <div class="board_write_wrap">
        <div class="board_write">
            <div class="title">
                <dl>
                    <dt>제목</dt>
                    <dd><input type="text" placeholder="제목 입력" value="글 제목이 들어갑니다"></dd>
                    
                </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>글쓴이</dt>
                    <dd><input type="text" placeholder="글쓴이 입력" value="김이름"></dd>
                </dl>
                <dl>
                    <dt>비밀번호</dt>
                    <dd><input type="password" placeholder="비밀번호 입력" value="1234"></dd>
                </dl>
            </div>
            <div class="cont">
                <textarea placeholder="내용 입력">
글 내용이 들어갑니다요
글 내용이 들어갑니다요
글 내용이 들어갑니다요
글 내용이 들어갑니다요
글 내용이 들어갑니다요
글 내용이 들어갑니다요
글 내용이 들어갑니다요</textarea>
            </div>             
        </div>
        <div class="bt_wrap">
            <a href="QNA_view_c.html" class="on">수정</a>
            <a href="QNA_view_c.html">취소</a>
        </div>
    </div>
  </div>
  
  

</section>

<%@include file="./footer.jsp" %>




</body>
</html>