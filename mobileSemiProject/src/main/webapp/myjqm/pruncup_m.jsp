<!--
* 제주의 무료 텀블러 대여 시스템인 푸른컵을 소개하는 페이지입니다.
- Header의 하단에 navbar를 구현하여 페이지 간의 이동 효율성을 높였습니다.
- Content영역은 접이식 패널을 이용하여 화면 효율성을 높이고 중요한 내용의 패널에 data-collapsed="false"속성을 적용하여 펼친 상태로 출력됩니다.
- 텍스트의 줄 간격을 설정하여 가독성을 높였습니다.
- 하단의 버튼을 통해서도 페이지 이동이 가능합니다.

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
 <div data-role="page" id="page" data-title="pruncup_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
  <!-- 본문 영역, 접이식 패널 기능을 사용 -->
  <div data-role="content" id="content1">
   <div data-role="collapsible-set" data-theme="b" data-content-theme="a">
    <div data-role="collapsible">
     <h3>쓰레기 섬, 제주</h3>
     <p>
      <img src="https://cdn.jejusori.net/news/photo/202105/329774_339146_5835.jpg" width="100%">
      한 해 1,500만명이 찾아오는 섬, 매일 90톤의 쓰레기가 새로 쏟아져 나옵니다.
      제주시의 한 매립장에만 5만 톤의 쓰레기가 쌓여 있죠. 
      이걸 소각하는 데 꼬박 3년이 걸린다고 합니다.
      추억과 함께 일회용 쓰레기도 쌓여갑니다.
      아름다운 제주, 일회용 쓰레기 없는 깨끗한 여행은 불가능할까요?
     </p>
    </div>
    <div data-role="collapsible">
     <h3>편리함의 이면</h3>
     <p>
      <img src="https://img.hani.co.kr/imgdb/resize/2018/0614/00504608_20180614.JPG" width="100%">
      만드는 데 5초, 쓰고 버리는 데 5분이 걸리는 일회용품은 
      분해되려면 500년 이상이 필요합니다.
      흔히 분리수거로 자원을 재활용한다고 생각하지만 처리 과정의 어려움때문에
      실제 재활용 비율은 매우 낮습니다.
      1분마다 트럭 한 대 분량의 플라스틱이 바다로 흘러듭니다. 해양동물은 버려진 플라스틱을
      삼키거나 목에 감은 채 죽어가죠.<br><br> 결국은 잘게 쪼개져 우리의 입 속에도 들어옵니다. 
      한 사람이 매년 삼키는 미세 플라스틱의 양이 신용카드 1개 무게이죠.
     </p>
    </div>
    <div data-role="collapsible" data-collapsed="false">
     <h3>제주 푸른컵</h3>
     <p>
      <img src="https://cdn.hkbs.co.kr/news/photo/202105/633418_378301_572.jpg" width="100%">
 	  그래서, 우리가 시작합니다!
      제주 푸른 컵은 관광객이 제주도에 왔을 때 쓸 수 있는
      다회용컵을 빌려주는 서비스를 제공합니다.
	  제주 전역의 푸른컵 참여 카페 및 친환경 상점에 푸른컵 대여소가 마련되어 있습니다.
      서로 다른 대여소에서 빌리고 반납할 수 있으니 세척 걱정은 하지 마세요!
      예쁜 푸른컵을 쓰고! 텀블러 할인도 받고!
      <br>
      편리한 친환경 실천, 푸른컵과 함께라면 가능합니다.😊
     </p>
    </div>
   </div>
   <!-- 푸른컵 이용 방법이 기재된 페이지로 이동하는 버튼 -->
   <div id="pruncup_btn">
   <a href="pruncup2_m.jsp" data-role="button" data-icon="check" data-inline="true" data-theme="b">푸른컵 이용방법 확인하기</a>
   </div>
 </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>