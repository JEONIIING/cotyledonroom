<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COTYLEDON ROOM</title>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/login3.css">
</head>
<body>
    <%@include file="./header_be.jsp" %>

    <div style="padding-top: 5%;">
      <h2>비밀번호 찾기</h2>
  </div>
  <div class="red_bar"></div>
  <form action="" method="post">

    <table class="content" >
      <tr>
        <td class="text">이름</td>
        <td><input class="box" type="text" name="membername"></td>
      </tr>
      <tr>
        <td class="text">아이디</td>
        <td><input class="box" type="text" name="membername"></td>
      </tr>
      <tr>
        <td class="text">주민번호</td>
        <td ><input class="box1" type="text" name="memberidnum1">
          <span>-</span>
        <span><input class="box1" type="password" name="memberidnum2" style="margin-left: 0px;"></span></td>
      </tr>
      <tr>
        <td colspan="2"><input class="login" input class="box" type="submit" value="비밀번호 찾기"></td>
      </tr>
      <tr>
        <td colspan="2">
          <div class="find">
            <a href="./login.jsp">로그인</a> | <a href="./missingId.jsp">아이디 찾기</a> | <a href="./agree.jsp">회원가입</a></td>
          </div>
      </tr>
  
    </table>
  </form>

    <%@include file="./footer.jsp" %>



</body>
</html>