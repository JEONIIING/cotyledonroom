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
              <a href="/admin/Notice_list" class="on">목록</a>
              <a href="/admin/Notice_edit">수정</a>
              <a href="/admin/Notice_edit">삭제</a>
          </div>
      </div>
    </div>
  </div>
  <br><br><br><br>

<%@include file="/WEB-INF/views/common/footer.jsp" %>

   
  </body>
</html>