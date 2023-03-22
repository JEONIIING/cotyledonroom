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
    <link rel="stylesheet" href="./css/S_membereditpage.css">
    <link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>
    <%@include file="./header_af.jsp" %>
    <%@include file="./sidebar_my.jsp" %>

<div>
<h2>회원 정보</h2>
</div>
<div class="red_bar"></div>
<section>
<form action="">
<table  cellspacing="0" class="edit_table">
  <tr>
    <td>이름</td>
    <td><input type="text" value="readonly"></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td><input type="text" value=""></td>
  </tr>
  <tr>
    <td>이메일</td>
    <td><input type="text" value=""></td>
  </tr>
  <tr>
    <td>주소</td>
    <td><input type="text" value=""></td>
  </tr>
  <tr>
    <td>생년월일</td>
    <td><input type="text" value="readonly"></td>
  </tr>
  <tr>
    <td>성별</td>
    <td> <label for="female">여성</label>
      <input type="radio" id="female" name="gender" value="female" width="1%">
      <span><label for="male">남성</label>
      <input type="radio" id="male" name="gender" value="male"></span></td>
  </tr>
  <tr>
    <td>닉네임</td>
    <td><input type="text"></td>
  </tr>
  <tr>
    <td>
      배송지 정보
    </td>
    <td style="text-align: center;">
      <select id="productCnt" type="number" class="selectarr" style="width: 80%;">
        <option value="1">우리집</option>
        <option value="2">본가</option>
        <option value="3">직장</option>
        <option value="4">학원</option>
        <option value="5">자취방</option>
    </select><tr>
    </td>
  </tr>

  <tr>
    <td colspan="2" style="text-align: center;"><input class="btn01" type="submit" value="회원정보 수정"></td> 
  </tr>
</table>
</form>


</section>

    <%@include file="./footer.jsp" %>



</body>
</html>