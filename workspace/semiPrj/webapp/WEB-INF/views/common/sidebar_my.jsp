<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img id="sidearea" class="menu-icon" src="/resources/image/menuicon.png" alt="이미지">
	    <br>
	<div id="sidebar">
    <div class="admin">My 쇼핑</div>
    <ul>
      <li><a href="./Cart.jsp">장바구니</a></li>
      <li><a href="./orderList.jsp">주문목록</a></li>
      <li><a href="./address.jsp">배송지목록</a></li>
      <br>
      <div class="admin">My 예약</div>
        <li><a href="./rv_chart.jsp">예약목록</a></li>
        <br>
        <div class="admin">회원 정보</div>
          <li><a href="./memberedit.jsp">회원수정</a></li>
          <li><a href="./QNA_list_c.jsp">Q&A</a></li>
          <li><a href="./memberquit.jsp">회원탈퇴</a></li>
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