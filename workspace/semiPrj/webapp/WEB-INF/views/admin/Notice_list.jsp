<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="/resources/css/admin/a_admin.css">
    <link rel="stylesheet" href="/resources/css/admin/a_main.css">
    <link rel="stylesheet" href="/resources/css/admin/a_designerForm.css">
    <link rel="stylesheet" href="/resources/css/admin/L_css.css">
</head>

<body>
 <%@ include file="/WEB-INF/views/common/header_am.jsp" %>

  <div style="height: 600px;">
    <div class="board_wrap">
      <div class="board_title">
          <Strong>공지사항</Strong>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num">번호</div>
                  <div class="title">제목</div>
                  <div class="writer">글쓴이</div>
                  <div class="date">작성일</div>
              </div>

              
              <c:forEach items="${noticeList}" var="nvo">
              <div>
                  <div class="num">${nvo.no}</div>
                  <div class="title"><a href="/admin/Notice_view">${nvo.title}</a></div>
                  <div class="writer">${nvo.writer}</div>
                  <div class="date">${nvo.enrollDate}</div>
              </div>
			  </c:forEach>
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
              <a href="/admin/Notice_write" class="on">등록</a>
              <!-- <a href="#">수정</a> -->
          </div>
      </div>
  </div>
  </div>
  <br><br><br><br>
 
<%@include file="/WEB-INF/views/common/footer.jsp" %>
   
  </body>
</html>