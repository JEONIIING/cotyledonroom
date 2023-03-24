<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 계정 양식</title>
    <link rel="stylesheet" href="/resources/css/admin/a_admin.css">
    <link rel="stylesheet" href="/resources/css/admin/a_main.css">
    <link rel="stylesheet" href="/resources/css/admin/a_designerForm.css">
    <link rel="stylesheet" href="/resources/css/admin/L_css.css">
    <link rel="stylesheet" href="/resources/css/a_comment.css">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header_am.jsp" %>  

  
  <div style="height: 600px;">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>QNA 답변</Strong>
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
              <a href="/admin/QNA_list_a" class="on">수정</a>
              <a href="/admin/QNA_list_a">취소</a>
  
              
          </div>
      </div>
      <div id="form-commentInfo">
          <div id="comment-count" style="font-size: 20px;">답변 </div>
          <input id="comment-input" placeholder="댓글을 입력해 주세요." style="width: 800px; height: 30px;">
          <button id="submit" style="width: 50px; height: 35px;">등록</button>
      </div>
      <div id=comments style="font-size: 15px; padding-bottom: 10%;">
      </div>
      <script src="js/comment.js"></script>
  
  
      </div>
  
    </div>
  <br><br><br><br>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
   
  </body>
</html>