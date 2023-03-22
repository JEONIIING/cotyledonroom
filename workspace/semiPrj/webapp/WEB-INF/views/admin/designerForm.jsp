<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 계정 양식</title>
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="./css/a_main.css">
    <link rel="stylesheet" href="./css/designerForm.css">
    <script defer src="./JS/designerForm.js"></script>
</head>
<body>
		<%@ include file="./header_am.jsp" %>
		
		<div id="menu_title"><디자이너 계정 생성></div>
    <div id="menu_title2">새로운 디자이너의 정보를 입력해주세요.</div>
  </div>
  
  
  <form action="" method="post">
    <table class="content">
      <tr>
        <td class="text">* 아이디</td>
        <td>
          <input class="box" type="text" name="memberId" required>
          <button>중복확인</button>
        </td>
      </tr>
      <tr>
        <td class="text">* 비밀번호</td>
        <td ><input class="box" type="password" name="memberPwd" required></td>
      </tr>
      <tr>
        <td class="text">* 비밀번호 확인</td>
        <td>
          <input class="box" type="password" name="memberPwd" required>
          <span>*</span>
        </td>
      </tr>
      <tr>
        <td class="text">* 디자이너 이름 </td>
        <td ><input class="box" type="password" name="memberPwd" required></td>
      </tr>
      <tr>
        <td class="text">* 전화번호</td>
        <td ><input class="box" type="text" name="memberPwd" required></td>
      </tr>
      <tr>
        <td class="text">* 이메일</td>
        <td ><input class="box" type="email" name="memberPwd" required></td>
      </tr>
      <tr>
        <td colspan="2">
          <input class="create" input class="box" type="submit" value="계정 생성" onclick="des_create();">
          <button class="cancel" type="button" ><a href="javascript:window.history.back();">취소</a></button>
        </td>
      </tr>
      
  
    </table>
  </form>
<br><br><br><br><br>
		
		<%@ include file="./footer.jsp" %>

</body>
</html>