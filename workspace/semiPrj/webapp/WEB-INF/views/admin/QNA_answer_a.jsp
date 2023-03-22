<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 계정 양식</title>
    <link rel="stylesheet" href="./css/a_admin.css">
    <link rel="stylesheet" href="./css/a_main.css">
    <link rel="stylesheet" href="./css/a_designerForm.css">
    <link rel="stylesheet" href="./css/L_css.css">
</head>

<body>
     <%@ include file="./header_am.jsp" %>

  
  <img class="menu-icon" id="sidearea" src="./image/134216_menu_lines_hamburger_icon.png" alt="이미지">
  
  <div id="sidebar" style="margin-top: 20px;">
    <div class="admin">ADMIN</div>
    <div class="line"></div>
    <ul>
      <li><a href="QNA_list_a.html">QNA</a></li>
      <li><a href="FAQ_list.html">FAQ</a></li>
      <li><a href="Notice_list.html">공지사항</a></li>
      <li><a href="designerList.html">디자이너 관리</a></li>
      <li><a href="admin_product_list.html">상품 관리</a></li>
      <li><a href="admin_member_list.html">고객 관리</a></li>
      <li><a href="statistics_member.html">통계 조회</a></li>
    </ul>
  </div>
  <div id="main_content" style="margin-top: 20px;">
    <div id="admin_main_title">시스템 정보</div>
    <div class="mainline"></div>
  </div>
  
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
              <a href="QNA_list_a.html" class="on">수정</a>
              <a href="QNA_list_a.html">취소</a>
  
              
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
  </div>
  <br><br><br><br>
  <script>
    const sidebar = document.getElementById('sidebar');
    const sidearea = document.getElementById('sidearea');

    sidearea.addEventListener('mouseover', () => {
      sidebar.classList.add('active');
    });
    sidebar.addEventListener('mouseleave', () => {
      sidebar.classList.remove('active');
    });

    const menuItems = document.querySelectorAll('#sidebar li');
  </script>
<%@ include file="./footer.jsp" %>
   
  </body>
</html>