<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객 정보 조회</title>
    <link rel="stylesheet" href="css/A_css.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="./css/a_main.css">
    <link rel="stylesheet" href="./css/designerForm.css">
    <link rel="stylesheet" href="./css/admin_member_info.css">
    <script src="./JS/designerInfo.js"></script>
</head>

<body>
 	<%@ include file="./header_am.jsp" %>
    
  <div class="board_wrap">
    <div class="board_title">
        <Strong>고객 상세정보</Strong>
        <p>고객의 상세 정보입니다.</p>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <div class="title">
              <b>고객닉네임</b> : <span class="memberNick">도리도리</span>
            </div>
            <div class="info">
                <dl>
                    <dt>등급번호 : </dt>
                    <dd>1</dd>
                </dl>
                <dl>
                    <dt>고객 ID : </dt>
                    <dd>yec220409</dd>
                </dl>
                <dl>
                    <dt>고객 생년월일 :</dt>
                    <dd>891109</dd>
                </dl>
                <dl>
                    <dt>고객 성별 :</dt>
                    <dd>F</dd>
                </dl>
                <dl>
                    <dt>탈퇴 여부</dt>
                    <dd>N</dd>
                </dl>
                
            </div>
            <div class="info">
              <dl>
                  <dt>고객 이름 : </dt>
                  <dd>이사라</dd>
              </dl>
              <dl>
                  <dt>고객 연락처 : </dt>
                  <dd>010-1234-8833</dd>
              </dl>
              <dl>
                  <dt>고객 Email : </dt>
                  <dd>qpwo33@nate.com</dd>
              </dl>
              <dl>
                  <dt>가입일자 : </dt>
                  <dd>2021.07.22</dd>
              </dl>

          </div>
            
            <div class="cont">
                <div class="greet_title"><고객 특이사항></div>
                <table>
                  <tr>
                    <td class="greet_content">
                      친절하신 편임
                    </td>
                  </tr>
                </table>
            </div>
            
        </div>
        <div class="bt_wrap">
            <a href="./admin_member_list.jsp" class="on">목록</a>
            <a href="./admin_member_edit.jsp">수정</a>
            
        </div>
    </div>
</div>
  
 <%@ include file="./footer.jsp" %>
   
  </body>
</html>