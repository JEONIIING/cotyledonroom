<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</body>
</html>