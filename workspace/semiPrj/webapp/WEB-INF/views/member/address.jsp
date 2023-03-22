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
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/S_orderList.css">
    
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
        <Strong>배송지 목록</Strong>
    </div>
    <div class="board_list_wrap">
        <div class="board_list">
            <div class="top">
                <div class="num"></div>
                
            </div>
           
            <div>
               
            <div>
                <table style="width: 1000px; text-align: left;">
                    <tr style="width: auto;"><th>본가</th> </tr>
                    <tr><td>김수진</td> </tr>
                    <tr>
                    <td>010-8943-0864</td>
                </tr>
                    <tr>
                    <td>강원도 원주시 00fh 304 (00동, 00아파트) 00동 000호 </td>
                </tr>
                <tr>
                    <td style="padding-top: 2%;"><button><a href="./addressedit.jsp">수정</a></button> 
                    <span><button>삭제</button> </span> </td>
                </tr>
                </table>
            </div>

            <br>
            <hr>
            <br>

            <div>
                <table style="width: 1000px; text-align: left;">
                    <tr style="width: auto;"><th>직장</th> </tr>
                    <tr><td>박연진</td> </tr>
                    <tr>
                    <td>010-8943-0864</td>
                </tr>
                    <tr>
                    <td>강원도 원주시 00fh 304 (00동, 00아파트) 00동 000호 </td>
                </tr>
                <tr>
                    <td style="padding-top: 2%;"><button>수정</button> 
                    <span><button>삭제</button> </span> </td>
                </tr>
                </table>
            </div>

            <br>
            <hr>
            <br>

            <div>
                <table style="width: 1000px; text-align: left;">
                    <tr style="width: auto;"><th>자취방</th> </tr>
                    <tr><td>문동은</td> </tr>
                    <tr>
                    <td>010-8943-0864</td>
                </tr>
                    <tr>
                    <td>강원도 원주시 00fh 304 (00동, 00아파트) 00동 000호 </td>
                </tr>
                <tr>
                    <td style="padding-top: 2%;"><button>수정</button> 
                    <span><button>삭제</button> </span> </td>
                </tr>
                </table>
            </div>
            
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


        <div class="bt_wrap">
            <a href="./addressenroll.jsp" class="on">등록</a>
            <!-- <a href="#">수정</a> -->
        </div>
    </div>
</div>


   	<%@include file="./footer.jsp" %>



</body>
</html>