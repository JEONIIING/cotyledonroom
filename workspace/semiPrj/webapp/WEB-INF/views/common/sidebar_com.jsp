<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <img id="sidearea" class="menu-icon" src="./image/134216_menu_lines_hamburger_icon.png" alt="이미지">
    <br>
	<div id="sidebar">
        <div class="admin">게시판 목록</div>
        <ul>
          <li><a href="./Notice_list_c.jsp">공지사항</a></li>
          <br>
          <li><a href="./FAQ_list_c.jsp">FAQ</a></li>
          <br>
          <li><a href="./QNA_list_c.jsp">QNA</a></li>
          <br>
          <li><a href="./review_list.jsp">리뷰게시판</a></li>
        </ul>
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

</script>
</body>
</html>