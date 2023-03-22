<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/shop_list_main.css">
    <link rel="stylesheet" href="./css/main.css">
    
    <style>
        
    </style>
    
</head>
<body>

    <%@ include file="./header_be.jsp" %>

        <br><br>
        <div class="rv_word">
            <p class="rv_word_title">매장 목록</p><br>
            
        </div>
        <div class="bar"></div>
        
        <form action="">
            <table class="./rv_shoplist" border="1">
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
                        <div style="text-align: center;">
                            <button type="button">
                                    <a href="./shop_list01.jsp">매장 둘러보기</a>
                            </button>
                        </div>
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
                        <div style="text-align: center;">
                            <button type="button">
                                    <a href="./shop_list02.jsp">매장 둘러보기</a>
                            </button>
                        </div>
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
                        <h1>교대점<br></h1>
                        <p>주소 : 서울시 강남구 역삼동<br></p>
                        <p>주차 : 주차 가능<br></p>
                        <p>전화 : 02-222-4444</p>
                    </td>
                    <td class="d_td">
                        <div style="text-align: center;">
                            <button type="button">
                                    <a href="./shop_list03.jsp">매장 둘러보기</a>
                            </button>
                        </div>
                
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
                        <h1>압구정점<br></h1>
                        <p>주소 : 서울시 강남구 역삼동<br></p>
                        <p>주차 : 주차 가능<br></p>
                        <p>전화 : 02-222-4444</p>
                    </td>
                    <td class="d_td">
                        <div style="text-align: center;">
                            <button type="button">
                                    <a href="./shop_list04.jsp">매장 둘러보기</a>
                            </button>
                        </div>
                    </td>
                </tr>
            </table>

    
		<%@ include file="./footer.jsp" %>

    

</body>
</html>