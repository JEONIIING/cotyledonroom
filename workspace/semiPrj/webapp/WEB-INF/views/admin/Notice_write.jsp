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
</head>

<body>
	<%@include file="/WEB-INF/views/common/header_am.jsp" %>  

 
  <div style="height: 600px;">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>공지사항</Strong>
      </div>
      <div class="board_write_wrap">
          <div class="board_write">
              <div class="title">
                  <dl>
                      <dt>제목</dt>
                      <dd><input type="text" placeholder="제목 입력"></dd>
                  </dl>
              </div>
              <div class="info">
                  <dl>
                      <dt>글쓴이</dt>
                      <dd><input type="text" placeholder="글쓴이 입력"></dd>
                  </dl>
                  <dl>
                      <dt>비밀번호</dt>
                      <dd><input type="password" placeholder="비밀번호 입력"></dd>
                  </dl>
                  <dl>
                      <dt>사진첨부</dt>
                      <dd><input type="file" placeholder="사진첨부"></dd>
                  </dl>
              </div>
              <div class="cont">
                  <textarea placeholder="내용 입력"></textarea>
              </div>             
          </div>
          <div class="bt_wrap">
              <a href="/admin/Notice_write" class="on">등록</a>
              <a href="/admin/Notice_list">취소</a>
          </div>
      </div>
   </div>
  </div>
  <br><br><br><br>
 
<%@include file="/WEB-INF/views/common/footer.jsp" %>

   
  </body>
</html>