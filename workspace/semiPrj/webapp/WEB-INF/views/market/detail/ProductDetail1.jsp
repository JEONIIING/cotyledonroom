<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/resources/css/market/product.css">
    <link rel="stylesheet" href="/resources/css/common/sidebar.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
<%@include file="/WEB-INF/views/common/header_be.jsp" %>
      
<%@include file="/WEB-INF/views/common/sidebar_mk.jsp" %>

    <div>
      <h1>MARKET</h1>
  </div>
  <div class="bar"></div>
    
        <div class="inner">
            <tr>
                <td>
                        <div class="detail" style="display: inline-block;">
                        <div >
                        <a href="/market/productlist" class="btnback"><span>BACK TO SHOP</span></a><br><br>
                        <h1 class="title">누베스 알바 600ml - 민감성 두피용 샴푸</h1><br>
                        <p class="price">65,000원</p><br>
                        <div class="txtbox">
                            <p><b>민감성 두피 케어용 샴푸</b></p><p><br></p><p>(1) 민감한 두피를 편안하게 진정</p><br>
                            <p>(2) 두피와 모발에 수분 공급</p><br>
                            <p>(3) 두피 트러블 유발요소 완화</p><br>
                            <p>(4) 사람의 두피와 모발과 동일한 약산성 (ph 5.5)</p><br>
                        </div>
                        <div class="bottombtns">
                            <div class="btnbox">
                                <select id="productCnt" type="number" class="selectarr">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select><tr>
                                    <td><button class="btnbuy" onclick=""><a href="/member/cart">장바구니</a></button></td>
                                    <td><button class="btnbuy" onclick="gotoBuy()">바로 구매</button></td>
                                </tr>
                            </div></div><br><br><br></div></div></td>
                            <td>
                                <img src="/resources/image/product/베레플루비아상세.png" alt="">
                            </td>
                        </tr>
                        </div>
                        <div>
                            <h2>제품 정보</h2>
                            <br>
                            <table class="order_table">
                              <tr>
                                <td class="order_td1">제품명</td>
                                <td>트리아 밀리아 베레 플루비아 샴푸</td>
                              </tr>
                              <tr>
                                <td class="order_td1">용도</td>
                                <td> Sensitive Scalp (민감성 두피용)</td>
                              </tr>
                              <tr>
                                <td class="order_td1">용량</td>
                                <td>600ml</td>
                              </tr>
                              <tr>
                                <td class="order_td1">두피 타입</td>
                                <td>건성 두피, 지루성 두피</td>
                              </tr>
                              <tr>
                                <td class="order_td1">사용기한 및 개봉 후 사용기간</td>
                                <td> 제조일로부터 2년 (개봉 후 1년 이내 사용 권장)</td>
                              </tr>
                              <tr>
                                <td class="order_td1">사용방법</td>
                                <td>미온수로 모발을 적신 후, 적당량을 덜어 모발과 두피를 가볍게 마사지한 후 충분히 헹구어 줍니다</td>
                              </tr>
                              <tr>
                                <td class="order_td1">제조자 및 제조판매업자</td>
                                <td>제품 내 별도 표기</td>
                              </tr>
                              <tr>
                                <td class="order_td1">제조국</td>
                                <td>한국</td>
                              </tr>
                              <tr>
                                <td class="order_td1" >사용시 주의사항</td>
                                <td >1) 화장품 사용 또는 사용 후 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있을 경우 전문의 등과 상담할 것<br>
                                2) 상처가 있는 부위 등에는 사용을 자제할 것<br>
                                3) 어린이의 손이 닿지 않는 곳에 보관할 것<br>
                                4) 직사광선을 피해서 보관할 것<br>
                                5) 눈에 들어갔을 때에는 즉시 씻어낼 것<br>
                                6) 사용 후 물로 씻어내지 않으면 탈모 또는 탈색의 원인이 될 수 있으므로 주의할 것</td>
                              </tr>
                                <td class="order_td1">품질보증 기준</td>
                                <td>본 제품에 이상이 있을 경우 공정거래위원회 고시 소비자 분쟁 해결 기준에 의해 보상해 드립니다</td>
                              </tr>
                              <tr>
                                <td class="order_td1">소비자 상담관련 전화번호</td>
                                <td>070-8672-3188</td>
                              </tr>
                              <tr>
                                <td class="order_td1">전성분</td>
                                <td>정제수, 다이소듐라우레스설포석시네이트, 코코-베타인, 글리세린, 포타슘코코일글리시네이트, C12-14파레스-12, 피이지-7글리세릴코코에이트, <br>
                                    피이지- 120메틸글루코스디올리에이트, 인도멀구슬나무꽃추출물, 병풀추출물, 호장근뿌리추출물, 황금추출물, 귤껍질추출물, 녹차추출물, <br>
                                    스페인감초뿌리추출물, 마트리카리아꽃추출물, 로즈마리잎추출물, 시트릭애씨드, 소듐라우릴글라이콜카복실레이트, 폴리쿼터늄-73,<br>
                                    에틸헥실글리세린, 하이드록시프로필구아하이드록시프로필트라이모늄클로라이드, 인도멀구슬나무잎추출물, 부틸렌글라이콜, 폴리쿼터늄-7,<br>
                                    프로판다이올, 소듐클로라이드, 카프릴릴글라이콜, 폴리쿼터늄-10, 클로페네신, 다이소듐이디티에이, 소듐벤조에이트, 소듐카보네이트, 향료</td>
                              </tr>
                            </table>
                           
                           
                        </div>
                    </table>
                </div>

        <div class="detail_img">
            <div class="prodviewEdit"><img src="/resources/image/product/설명1.png" alt=""></div>
            <div class="prodviewEdit"><img src="/resources/image/product/설명2.png" alt=""></div>
        </div></div>
    </div>

<%@include file="/WEB-INF/views/common/footer.jsp" %>
      
  </body>
</html>