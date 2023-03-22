<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/admin.css">
  <link rel="stylesheet" href="./css/a_main.css">
  <link rel="stylesheet" href="./css/disignerEdit.css">
  <link rel="stylesheet" href="./css/admin_member_edit.css">
  <title>고객 정보 수정</title>
</head>
<body>
 	<%@ include file="./header_am.jsp" %>
 	
 	
    <div id="menu_title"><고객 정보 수정></div>
    <div id="menu_title2">고객의 특이사항을 수정할 수 있습니다.</div>
  </div>

  <div class="red_bar"></div>
  
  <form action="" method="post">
    <table class="content">
      <tr>
        <td class="text" readonly>* 닉네임 : </td>
        <td><div class="kan" name="memberNick"> 도리도리 </div></td>
      </tr>
      <tr>
        <td class="text" readonly>* 이름</td>
        <td><div class="kan" name="memberName"> 이사라 </div></td>
      </tr>
      <tr>
        <td class="text" readonly>* 가입일자</td>
        <td><div class="kan" name="memDate"> 2021.07.22 </div></td>
      </tr>
      <tr>
        <td class="text">* 고객 ID </td>
        <td ><div class="kan" name="memberId"> yec220409 </div></td>
      </tr>
      
      <tr>
        <td class="text">* 전화번호 </td>
        <td ><div class="kan" name="memberTel"> 010-1234-8833 </div></td>
      </tr>
      <tr>
        <td class="text">* 이메일 </td>
        <td ><div class="kan" name="memberEmail"> qpwo33@nate.com </div></td>
      </tr>
      
      <tr>
        <td class="text">* 특이사항</td>
        <td ><textarea name="" id="" cols="100" rows="20" required></textarea></td>
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

   
    <%@ include file="./footer.jsp" %>
</body>
</html>