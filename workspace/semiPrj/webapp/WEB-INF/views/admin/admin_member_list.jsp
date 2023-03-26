<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객 관리</title>
    <link rel="stylesheet" href="/resources/css/admin/D_css.css">
    <link rel="stylesheet" href="/resources/css/admin/admin.css">
    <link rel="stylesheet" href="/resources/css/admin/a_main.css">
    <link rel="stylesheet" href="/resources/css/admin/designerForm.css">
    <link rel="stylesheet" href="/resources/css/admin/admin_member_list.css">
    
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header_am.jsp" %>
	
	<div>
    <div class="board_wrap">
      <div class="board_title">
          <Strong>고객 목록</Strong>
          <p>고객의 정보 목록입니다.</p>
      </div>
      <div class="board_list_wrap">
          <div class="board_list">
              <div class="top">
                  <div class="num">번호</div>
                  <div class="title">고객닉네임</div>
                  <div class="writer">특이사항</div>
                  <div class="gender">성별</div>
                  <div class="count">가입일자</div>
              </div>
              <div class = "infoLine" onclick="location.href='http://192.168.200.164:5500/admin_member_info.jsp'">
                  <div class="num">7</div>
                  <div class="title"><a href="/admin/memberInfo">도리도리</a></div>
                  <div class="writer">친절하신 편임</div>
                  <div class="gender">F</div>
                  <div class="count">2021.07.22</div>
              </div>
              <div class = "infoLine">
                  <div class="num">6</div>
                  <div class="title"><a href="">블루베리</a></div>
                  <div class="writer">커트 할때 길이에 예민하심</div>
                  <div class="gender">F</div>
                  <div class="count">2021.07.22</div>
              </div>
              <div class = "infoLine">
                  <div class="num">5</div>
                  <div class="title"><a href="">동동</a></div>
                  <div class="writer">저번에 디자이너한테 커피사줌</div>
                  <div class="gender">F</div>
                  <div class="count">2021.07.22</div>
              </div>
              <div class = "infoLine">
                  <div class="num">4</div>
                  <div class="title"><a href="view.html">호롤로</a></div>
                  <div class="writer">말이 없으신 편임 </div>
                  <div class="gender">M</div>
                  <div class="count">2023.02.15</div>
              </div>                
              <div class = "infoLine">
                  <div class="num">3</div>
                  <div class="title"><a href="view.html">빈센조</a></div>
                  <div class="writer">단골으로 만들기 위해 노력할것 ^,^</div>
                  <div class="gender">F</div>
                  <div class="count">2021.03.12</div>
              </div>                
              <div class = "infoLine">
                  <div class="num">2</div>
                  <div class="title"><a href="view.html">글로리</a></div>
                  <div class="writer">마시는건 항상 커피달라고 하셨음</div>
                  <div class="gender">F</div>
                  <div class="count">2022.11.21</div>
              </div>                
              <div class = "infoLine">
                  <div class="num">1</div>
                  <div class="title"><a href="view.html">카지노</a></div>
                  <div class="writer">도박에 대해 이야기하는걸 좋아하심</div>
                  <div class="gender">M</div>
                  <div class="count">22.04.05</div>
              </div>
          </div>


          <div class="board_page">
              <a href="#" class="bt first"><<</a>
              <a href="#" class="bt prev"><</a>
              <a href="#" class="num on">1</a>
              <a href="#" class="num">2</a>
              <a href="#" class="num">3</a>
              <a href="#" class="num">4</a>
              <a href="#" class="num">5</a>
              <a href="#" class="bt next">></a>
              <a href="#" class="bt last">>></a>
          </div>


          
      </div>
  </div> 
  </div>
  <br><br><br><br><br><br>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>