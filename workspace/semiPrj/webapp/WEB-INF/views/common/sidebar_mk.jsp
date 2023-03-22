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
          <h2>MARKET</h2>
        
          <ul>
            <li><a href="./ProductList.jsp">ALL</a></li>
            <li><a href="./shampoo.jsp">SHAMPOO</a></li>
            <li><a href="./treatment.jsp">TREATMENT</a></li>
            <li><a href="./styling.jsp">STYLING</a></li>
            <li><a href="./essence.jsp">ESSENCE</a></li>
            <li><a href="./machine.jsp">MACHINE</a></li>
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