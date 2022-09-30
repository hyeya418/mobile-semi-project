<!--
* 푸른컵 이용방법이 기재된 페이지입니다.
- Header의 하단에 navbar를 구현하여 페이지 간의 이동 효율성을 높였습니다.
- Content영역은 접이식 패널을 이용하여 화면 효율성을 높이고 외부 접이식 패널에 data-collapsed="false"속성을 적용하여 펼친 상태로 출력됩니다.
- 하단의 버튼은 외부 사이트와 연결됩니다. 외부 사이트는 target=“_blank”속성을 설정하여 새로운 창으로 열립니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="js/darkmode.js"></script>
<style type="text/css">
#content1 {
 margin: auto; 
 line-height: 30px;
}
#pruncup_btn {
 text-align: center;
}
</style>
</head>
<body>
	<div data-role="page" id="page" data-title="pruncup2_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
  <!-- 본문 영역, 중첩 접이식 패널 기능을 사용 -->
  <div data-role="content" id="content1">
   <div data-role="collapsible-set" data-theme="b" data-content-theme="a">
    <div data-role="collapsible" data-collapsed="false">
     <h3>푸른컵 이용 방법</h3>
     <p>
      푸른컵은 단 7일 동안만 무료로 사용 가능합니다.
	  8일 이상 사용하려면, 7일 내에 제주 전역의 푸른컵 대여/반납소에서 반납 & 재대여 하시면 됩니다.
	  푸른컵은 7일간 텀블러 무료 대여 시스템입니다. 7일 후 반납을 하지 않을 시에만 15,000원이 결제 됩니다. (선결제, 환불 아님!) 
	  제주전역에 대여/반납소가 있으며, 공항 1층 돌랑돌랑상점에서도 반납이 가능합니다.
	  푸른컵 덕분에 편리하게 제로 웨이스트 여행을 하셨다면, 반납하실 때 세척팁을 주실 수도 있어요!
	 </p>
	 <p>
	  <img src="https://pruncup.com/wp-content/uploads/2022/03/0331-05-scaled-e1648705715770-300x115.jpg" width="30%">
	  <br>
	  푸른컵은 한번에 3개까지 대여가능합니다. 일행의 반납 일정이 다르다면 따로 대여해 주세요.
	 </p>
     <div data-role="collapsible">
      <h3>푸른컵 세척 과정</h3>
      <p>
       푸른컵은 연마제를 제거하여 고객님께 전달 됩니다. 
       식용유로 닦고, 식용베이킹소다를 이용해 뜨거운물로 닦고 애벌 손세척후 기계세척을 합니다. 아주 깨끗하겠죠?
	   반납해주신 푸른컵은 ①미온수 불림 → ②애벌세척 → ③고온수 세척 → ④기계세척 → ⑤자외선 살균 총 5단계의 철저한 세척과정을 거칩니다.
	  </p>
     </div>
    </div>
   </div>
  </div>
  <!-- 푸른컵 대여/반납소 안내 지도로 이동하는 버튼 -->
  <div id="pruncup_btn">
   <a href="https://pruncup.com/map/" target="_blank" data-ajax="false" data-role="button" data-icon="location" data-inline="true" data-theme="b">푸른컵 대여/반납소</a>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>