<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디자이너 정보</title>
    <link rel="stylesheet" href="/resources/css/admin/A_css.css">
    <link rel="stylesheet" href="/resources/css/admin/admin.css">
    <link rel="stylesheet" href="/resources/css/admin/a_main.css">
    <link rel="stylesheet" href="/resources/css/admin/designerForm.css">
    <link rel="stylesheet" href="/resources/css/admin/desingerInfo.css">
    <script defer src="/resources/js/designerInfo.js"></script>
</head>
<body>
		<%@ include file="/WEB-INF/views/common/header_am.jsp" %>
		
		<div class="board_wrap">
    <div class="board_title">
        <Strong>디자이너 상세정보</Strong>
        <p>디자이너의 상세 정보입니다.</p>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <div class="title">
              리아
            </div>
            <div class="info">
                <dl>
                    <dt>매장번호 : </dt>
                    <dd>3</dd>
                </dl>
                <dl>
                    <dt>디자이너 ID : </dt>
                    <dd>yec220409</dd>
                </dl>
                <dl>
                    <dt>디자이너 PWD : </dt>
                    <dd>adsglwkj0129*</dd>
                </dl>
                <dl>
                    <dt>탈퇴 여부</dt>
                    <dd>N</dd>
                </dl>
                
            </div>
            <div class="info">
              <dl>
                  <dt>이름 : </dt>
                  <dd>김하나</dd>
              </dl>
              <dl>
                  <dt>전화번호 : </dt>
                  <dd>010-1234-1234</dd>
              </dl>
              <dl>
                  <dt>디자이너 Email : </dt>
                  <dd>adfg@naver.com</dd>
              </dl>
              <dl>
                  <dt>디자이너 DB번호</dt>
                  <dd>5</dd>
              </dl>

          </div>
            
            <div class="cont">
                <div class="greet_title"><소개내용></div>
                <table>
                  <tr>
                    <td><img class="photo"src="/resources/image/디자이너1.jpg" alt="이미지" ></td>
                    <td class="greet_content">
                      경력 15년/ 거의 대부분의 시간을 서 있어야 하기 때문에, 허리에 무리가 갑니다. 허리 통증이 지속되다보니 중간 중간 스트레칭을 하거나 자세를 바꾸는 등으로 허리를 풀어주려고 합니다.
                    </td>
                  </tr>
                </table>
            </div>
            
        </div>
        <div class="bt_wrap">
            <a href="/admin/designerList" class="on">목록</a>
            <a href="/admin/designerEdit">수정</a>
            <button class = "drop" type="button" onclick="button_desExit();">탈퇴</button>
        </div>
    </div>
</div>
		
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>