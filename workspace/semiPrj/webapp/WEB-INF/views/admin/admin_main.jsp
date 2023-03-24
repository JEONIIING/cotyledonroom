<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 계정 양식</title>
    <link rel="stylesheet" href="/resources/css/admin/admin.css">
    <link rel="stylesheet" href="/resources/css/admin/a_main.css">
    <link rel="stylesheet" href="/resources/css/admin/designerForm.css">
</head>

<body>
  <header style="margin:1.5%">
    <div class="abc">
      <div class="Title"><a  href = "./Main.jsp">COTYLEDON ROOM</a></div>
    </div>
    
  </header>
  
  <img class="menu-icon" id="sidearea" src="./image/134216_menu_lines_hamburger_icon.png" alt="이미지">
  
  <div id="sidebar" style="margin-top: 20px;">
    <div class="admin">ADMIN</div>
    <div class="line"></div>
    <ul>
      <li><a href="./QNA_list_a.jsp">QNA</a></li>
      <li><a href="./FAQ_list.jsp">FAQ</a></li>
      <li><a href="./Notice_list.jsp">공지사항</a></li>
      <li><a href="./designerList.jsp">디자이너 관리</a></li>
      <li><a href="./admin_product_list.jsp">상품 관리</a></li>
      <li><a href="./admin_member_list.jsp">고객 관리</a></li>
      <li><a href="./statistics_member.jsp">통계 조회</a></li>
    </ul>
  </div>
  <div id="main_content" style="margin-top: 20px;">
    <div id="admin_main_title">시스템 정보</div>
    <div class="mainline"></div>
  </div>
  
  <div style="height: 600px;">
    컨텐츠 여기다 넣으면 돼 ~~~! 
  </div>
  
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
  <footer> 
        
    <p><p class="room">COTYLEDON ROOM</p>&copy;서울특별시 강남구 테헤란로14길 6 남도빌딩 2층, 3층, 4층 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        이용약관 |  개인정보처리방침&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        COTYLEDONROOM@cotyledon.kr Copyright © All Rights reserved.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <li class="right">
          <a  href = "https://www.instagram.com/"><img alt = "image" src = ".\image\instagram.png" width= 25px; height=25px; ></a> &nbsp;
          <a  href = "https://ko-kr.facebook.com/"><img alt = "image" src = ".\image\facebook.png" width= 25px; height=25px; ></a> &nbsp;
          <a  href = "https://www.youtube.com/"><img alt = "image" src = ".\image\youtube.png" width= 25px; height=25px; >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
      </li>
    </p>
</footer>
   
  </body>
</html>