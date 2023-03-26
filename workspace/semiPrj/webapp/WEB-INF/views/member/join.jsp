<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COTYLEDON ROOM</title>
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/member/join.css">
</head>
<body>
   <%@include file="/WEB-INF/views/common/header_be.jsp" %>

    <div style="padding-top: 5%;"></div>
      <div><h2>회원 가입</h2></div>
    <div class="red_bar"></div>
    <div style="padding-bottom: 5%;">
    <form action="" method="post">
      
      <table class="content">
        <tr>
          <td class="text">아이디</td>
          <td><input class="box" type="text" name="memberId"></td>
          <td><input class="btn01" type="submit" value="중복확인" ></td>
        </tr>
        <tr>
          <td class="text">비밀번호</td>
          <td><input class="box" type="text" name="memberPwd"></td>
        </tr>
        <tr>
          <td class="text">비밀번호 확인</td>
          <td><input class="box" type="text" name="memberPwd2"></td>
        </tr>
        <tr>
          <td class="text">이름</td>
          <td><input class="box" type="text" name="membername"></td>
        </tr>
        <tr>
          <td class="text">주민번호</td>
          <td><input class="box1" type="text" name="memberIdnum1">
          <span>-</span>
          <span><input class="box1" type="password" name="memberIdnum2" style="margin-left: 0px;"></span></td>
        </tr>
        <tr>
          <td class="text">전화번호</td>
          <td><input class="box2" type="text" name="memberPhone">
          <span><input class="box2" type="text" name="memberPhone2"style="margin-left: 0px;"></span>
          <span><input class="box2" type="text" name="memberPhone3"style="margin-left: 0px;"></span></td>
          <td><input class="btn01" type="submit" value="인증하기" ></td>
        </tr> 
        <tr>
          <td class="text">이메일</td>
          <td><input class="memberemail" type="text" name="memberEmail">
          <span>@</span>
          <span><input class="memberemail" type="text" name="memberEmail2"style="margin-left: 0px;"></span>
          </td>
        </tr> 
        <tr>
          <td class="text">주소</td>
          <td><input class="box" type="text" name="memberAddress"></td>
          <td><input class="btn01" type="submit" value="주소찾기" ></td>
        </tr>
        <tr>
          <td class="text">상세주소</td>
          <td><input class="box" type="text" name="memberAddress2"></td>
        </tr>
        <tr>
          <td class="text">닉네임</td>
          <td><input class="box" type="text" name="memberNick"></td>
        </tr>
          <td class="text">성별</td>
          <td style="text-align: center;"> <label for="female">여성</label>
          <input type="radio" id="female" name="gender" value="female">
  
          <span><label for="male">남성</label>
          <input type="radio" id="male" name="gender" value="male"></span></td>
        </tr>
        <tr>
          <td colspan="3"><input class="login" type="submit" value="가입하기"></td>
        </tr>
        <tr>
          <td colspan="2">
            <div class="find">
            <a href="/member/login">로그인</a> | <a href="/member/missingpwd">비밀번호 찾기</a> </td>
            </div>
        </tr>
    
      </table>
    </form>
  </div>

   <%@include file="/WEB-INF/views/common/footer.jsp" %>



</body>
</html>