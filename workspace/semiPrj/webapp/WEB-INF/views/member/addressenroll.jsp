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
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/S_orderList.css">
    <link rel="stylesheet" href="./css/L_css.css">
</head>
<body>
  <%@include file="./header_af.jsp" %>
    <%@include file="./sidebar_my.jsp" %>
<br>
<br>
<div class="order_title">
<strong>My 쇼핑</strong>
</div>

<div class="bar"></div>
    
<div class="board_wrap">
    <div class="board_title">
        <Strong>배송지 등록</Strong>
    </div>
    <div class="board_write_wrap">
        <div class="board_write">
            <div class="title">
                <dl>
                    <dt>배송지명</dt>
                    <dd><input type="text" placeholder="배송지 입력"></dd>
                </dl>
            </div>
            <div class="title">
                <dl>
                    <dt>수령인명</dt>
                    <dd><input type="text" placeholder="수령인명 입력"></dd>
                </dl>
            </div>
            <div class="title">
                <dl>
                    <dt>전화번호</dt>
                    <dd><input style="width: 50px;" type="text"> -
                        <input style="width: 50px;" type="text"> -
                        <input style="width: 50px;" type="text"></dd>            
                </dl>
                
            </div>
            <div class="title">
                <dl>
                    <dt>주소</dt>
                    <dd><input style="width: 700px; height: 150px;" type="text">           
                </dl>
                
            </div>
           
                      
        </div>
        <div class="bt_wrap">
            <a href="./Notice_write.jsp" class="on">등록</a>
            <a href="./Notice_list.jsp">취소</a>
        </div>
    </div>
 </div>
</div>
<br><br><br><br>

   <%@include file="./footer.jsp" %>



</body>
</html>