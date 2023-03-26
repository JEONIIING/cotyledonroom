<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/resources/css/admin/admin.css">
  <link rel="stylesheet" href="/resources/css/admin/a_main.css">
  <link rel="stylesheet" href="/resources/css/admin/disignerEdit.css">
  <title>디자이너 정보 수정</title>
</head>
<body>
		<%@ include file="/WEB-INF/views/common/header_am.jsp" %>
		
		<div id="menu_title"><디자이너 정보 수정></div>
    <div id="menu_title2">디자이너의 정보를 수정할 수 있습니다.</div>
  </div>

  <div class="red_bar"></div>
  
  <form action="/admin/designerInfo" method="post">
    <table class="content">
      <tr>
        <td class="text" readonly>* 매장번호</td>
        <td><div class="kan" name="number"> 3 </div></td>
      </tr>
      <tr>
        <td class="text" readonly>* 이름</td>
        <td><div class="kan" name="desName"> 리아 </div></td>
      </tr>
      <tr>
        <td class="text" readonly>* 생성일자</td>
        <td><div class="kan" name="desName"> 김하나 </div></td>
      </tr>
      <tr>
        <td class="text">* 디자이너 ID </td>
        <td ><div class="kan" name="desId"> yec220409 </div></td>
      </tr>
      <tr>
        <td class="text">* 비밀번호</td>
        <td ><input class="box" type="password" name="desPwd1"></td>
      </tr>
      <tr>
        <td class="text">* 비밀번호 확인</td>
        <td >
          <input class="box" type="password" name="desPwd2">
          <span class="conform">*</span>
        </td>
      </tr>
      <tr>
        <td class="text">* 전화번호 </td>
        <td >
          <input class="box" type="tel" name="tel" value="" required>
        </td>
      </tr>
      <tr>
        <td class="text">* 이메일 </td>
        <td >
          <input class="box" type="text" name="email" value="" required>
        </td>
      </tr>
      
      <tr>
        <td class="text">* 소개내용</td>
        <td ><textarea name="" id="" cols="100" rows="20" required></textarea></td>
      </tr>
      <tr>
        <td class="text">* 디자이너 이미지</td>
        <td>
          <input class="box" type="password" name="memberPwd">
          <input type="file" name="" id="" required multiple>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <input class="check" input type="submit" value="확인">
          <button class="cancel" type="button"  onclick="history.back(-1);"><a href="javascript:window.history.back();">취소</a></button>
        <td>
        </td>
      </tr>
      
  
    </table>
  </form>

		
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>