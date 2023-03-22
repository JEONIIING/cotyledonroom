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
    <link rel="stylesheet" href="./css/rv_form.css">
    <link rel="stylesheet" href="./css/rv_sellect01.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    
    
    <style>
        
    </style>
</head>


<body>
    
	<%@ include file="./header_af.jsp" %>
    <%@ include file="./sidebar_my.jsp" %>
    



    <div class="rv_word">
        <p class="rv_word_title">예약</p><br>
        <p class="rv_word_content">
            실시간 예약을 통해 편리한 매장이용을 도와드립니다.<br>
            기타 문의사항은 해당 매장으로 문의 부탁드립니다.
        </p>
    </div>
    <div class="bar"></div>

    <form action="">
        <div class="rv_container">
            <div class="rv_item1">01<br>매장 선택</div>
            <div class="rv_item2">02<br>디자이너 선택</div>
            <div class="rv_item3">03<br>시술 선택</div>
            <div class="rv_item4">04<br>일정 선택</div>
            <div class="rv_item5">05<br>예약 확인</div>
        </div>
        <div class="bar"></div>
    </form>

    <form action="">
        <table class="rv_shoplist" border="1">
            <colgroup>
                <col class="col1"/>
                <col class="col2"/>
                <col class="col2"/>
            </colgroup>
            <tr>
                <td class="aa"><img class="shopimg" src="./image/shop3.jpg" alt=""></td>
                <td>
                    <h1>역삼점<br></h1>
                    <p>주소 : 서울시 강남구 역삼동<br></p>
                    <p>주차 : 주차 가능<br></p>
                    <p>전화 : 02-222-4444</p>
                </td>
                <td class="d_td">
                    <input type="radio" name="shop" value="shop1">
                    <label for="shop1">선택하기</label>
                </td>
            </tr>
        </table>
        <table class="rv_shoplist" border="1">
            <colgroup>
                <col class="col1"/>
                <col class="col2"/>
                <col class="col2"/>
            </colgroup>
            <tr>
                <td><img class="shopimg" src="./image/shop3.jpg" alt=""></td>
                <td>
                    <h1>강남점<br></h1>
                    <p>주소 : 서울시 강남구 역삼동<br></p>
                    <p>주차 : 주차 가능<br></p>
                    <p>전화 : 02-222-3333</p>
                </td>
                <td class="d_td">
                    <input type="radio" name="shop" value="shop2">
                    <label for="shop2">선택하기</label>
                </td>
            </tr>
        </table>
        <table  class="rv_shoplist" border="1">
            <colgroup>
                <col class="col1"/>
                <col class="col2"/>
                <col class="col2"/>
            </colgroup>
            <tr>
                <td class="aa"><img class="shopimg" src="./image/shop3.jpg" alt=""></td>
                <td>
                    <h1>역삼점<br></h1>
                    <p>주소 : 서울시 강남구 역삼동<br></p>
                    <p>주차 : 주차 가능<br></p>
                    <p>전화 : 02-222-4444</p>
                </td>
                <td class="d_td">
                    <input type="radio" name="shop" value="shop3">
                    <label for="shop3">선택하기</label>
                </td>
            </tr>
        </table>
        <table  class="rv_shoplist" border="1">
            <colgroup>
                <col class="col1"/>
                <col class="col2"/>
                <col class="col2"/>
            </colgroup>
            <tr>
                <td class="aa"><img class="shopimg" src="./image/shop3.jpg" alt=""></td>
                <td>
                    <h1>역삼점<br></h1>
                    <p>주소 : 서울시 강남구 역삼동<br></p>
                    <p>주차 : 주차 가능<br></p>
                    <p>전화 : 02-222-4444</p>
                </td>
                <td class="d_td">
                    <input type="radio" name="shop" value="shop4">
                    <label for="shop8">선택하기</label>
                </td>
            </tr>
        </table>

        <div style="text-align: center;">
        
            <button type="button">
                    <a href="./rv_sellect02.jsp">다음</a>
            </button>
            
        </div>

    </form>
    


	<%@ include file="./footer.jsp" %>

    
        
    

</body>
</html>