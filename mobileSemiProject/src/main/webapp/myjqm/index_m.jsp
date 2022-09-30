<!--
* 프로젝트의 메인 페이지입니다.
- tabs와 navbar를 사용하여 화면의 공간 효율성을 높였습니다. 
- Header영역의 좌측 버튼은 패널이 화면 좌측에서 나오고 우측 버튼은 패널이 화면 우측에서 나옵니다.
- 화면 하단의 목록은 listview와 a태그를 사용하여 페이지 이동이 가능하며 각 내용을 연상시킬 수 있는 아이콘을 목록에 함께 사용했습니다. 
- Footer영역의 버튼은 모든 페이지에서 접근이 가능하며, 맨 우측의 Top버튼은 각 페이지의 상단으로 이동합니다. 
- Footer영역은 하단에 고정한 상태입니다.

* 좌측 패널에는 각 페이지로 이동이 가능한 목록과 다크모드 버튼을 구현했습니다.
- 다크 모드 클릭 시 버튼명이 라이트 모드로 변경되며 페이지에 밝은 테마가 적용됩니다.
- 모든 페이지에 메뉴 패널이 있어 페이지 간 이동 효율성을 높였습니다.
- CLOSE를 클릭하면 해당 패널을 닫을 수 있습니다.

* 우측 패널에는 로그인, 회원가입 페이지로 이동하는 버튼과 ID 찾기, PW 찾기 버튼이 있습니다. 
- ID 찾기, PW 찾기는 버튼만 구현했으며 기능은 없습니다.
- 모든 페이지에 로그인 패널이 있어 페이지 간 이동 효율성을 높였습니다.
- 좌측 상단의 ×버튼을 클릭하면 해당 패널을 닫을 수 있습니다.

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
</head>
<body>
	<div data-role="page" id="page" data-title="index_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
  <div data-role="content">
   <!-- 에코 매장 -->
   <div data-role="tabs">
	<div data-role="navbar">
	<ul>
     <li><a href="#tab1" class="ui-btn-active">💗</a></li>
     <li><a href="#tab2">주문 방법</a></li>
     <li><a href="#tab3">준비 사항</a></li>
     <li><a href="#tab4">환급 방법</a></li>
    </ul>
    <br>
    <div id="tab1"><img src="https://korchinatnc.com/blog/wp-content/uploads/2021/07/%E1%84%89%E1%85%B3%E1%84%90%E1%85%A1%E1%84%87%E1%85%A5%E1%86%A8%E1%84%89%E1%85%B31.png" width="100%"></div>
    <div id="tab2"><img src="https://korchinatnc.com/blog/wp-content/uploads/2021/07/3-e1626074383114.png" width="100%"></div>
    <div id="tab3"><img src="https://korchinatnc.com/blog/wp-content/uploads/2021/07/206122251_4200751463325517_4766835715526819467_n-1-e1626074369226.png" width="100%"></div>
    <div id="tab4"><img src="https://korchinatnc.com/blog/wp-content/uploads/2021/07/2-e1626074356444.png" width="100%"></div>
    </div>
   </div>
   <!-- 추천 관광지 -->
   <div>
    <h3>📌추천 관광지</h3>
    <table>
     <tr>
      <td><a href="#"><img src="images/hyeopjae.jpg" style="width: 100%; border-radius: 10px;"> </a></td>
      <td><a href="#"><img src="images/gwangchigi.jpg" style="width: 100%; border-radius: 10px;"> </a></td>    
     </tr>
     <tr>
      <td>
       <a data-role="button" data-inline="true" data-mini="true">#협재해수욕장</a>
       <a data-role="button" data-inline="true" data-mini="true">#에메랄드</a>
       <a data-role="button" data-inline="true" data-mini="true">#제주협재점</a>
      </td>
      <td>
       <a data-role="button" data-inline="true" data-mini="true">#광치기해변</a>
       <a data-role="button" data-inline="true" data-mini="true">#일출명소</a>
       <a data-role="button" data-inline="true" data-mini="true">#제주성산DT점</a>
      </td>
     </tr>
    </table>
   </div>
   <!-- 오늘의 추천 메뉴 -->
   <div>
    <h3>📌오늘의 추천 메뉴</h3>
    <table style="text-align: center;">
     <tr>
      <td><a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002081]_20210415133656839.jpg" style="width: 100%; border-radius: 50%;"> </a></td>
      <td><a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003223]_20210315170846073.jpg" style="width: 100%; border-radius: 50%;"> </a></td>
      <td><a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000003997]_20220311105602098.jpg" style="width: 100%; border-radius: 50%;"> </a></td>
      <td><a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/07/[9300000003468]_20210727081659217.jpg" style="width: 100%; border-radius: 50%;"> </a></td>
     </tr>
     <tr style="font-size: 12px;">
      <td>돌체 콜드브루</td>
      <td>바질 토마토 크림치즈 베이글</td>
      <td>제주 그린 한라봉 모히또 블렌디드</td>
      <td>제주 녹차 생크림 롤</td>
     </tr>
    </table>
   </div>
   <!-- 환경 보호 챌린지 -->
   <h3>📌환경 보호 챌린지</h3>
   <div data-role="tabs">
	<div data-role="navbar">
	<ul>
     <li><a href="#tab1" class="ui-btn-active">챌린지</a></li>
     <li><a href="#tab2">소개</a></li>
     <li><a href="#tab3">용기내</a></li>
     <li><a href="#tab4">줍깅</a></li>
     <li><a href="#tab5">고고</a></li>
    </ul>
    <br>
    <div id="tab1"><img src="https://www.korea.kr/newsWeb/resources/attaches/2021.06/25/c6cb2a755ceb9229e276abe30f666c05.jpg" width="100%"></div>
    <div id="tab2"><img src="https://www.korea.kr/newsWeb/resources/attaches/2021.06/25/c82db5e1199e03b5e011373da5c9b6bc.jpg" width="100%"></div>
    <div id="tab3"><img src="https://www.korea.kr/newsWeb/resources/attaches/2021.06/25/feefe0cbf39da050606becf7106f720a.jpg" width="100%"></div>
    <div id="tab4"><img src="https://www.korea.kr/newsWeb/resources/attaches/2021.06/25/2eb2ca9d95d80ebc76a162e79b26f854.jpg" width="100%"></div>
    <div id="tab5"><img src="https://www.korea.kr/newsWeb/resources/attaches/2021.06/25/a1aecb9c17940b1222153566f40bc695.jpg" width="100%"></div>
    </div>
   </div>
   <a href="echo_challenge_m.jsp" data-role="button" data-icon="check">챌린지 게시판 바로가기</a>
   <!-- 본문 영역의 메뉴 바로가기 listview -->
   <div>
    <ul data-role="listview" data-inset="true">
     <li><a href="coffee.jsp" data-role="button" data-icon="heart">COFFEE</a></li>
     <li><a href="drinkmenu.jsp" data-role="button" data-icon="bullets">MENU</a></li>
     <li><a href="https://www.google.co.kr/maps/search/%EC%A0%9C%EC%A3%BC+%EC%8A%A4%ED%83%80%EB%B2%85%EC%8A%A4/data=!3m1!4b1?hl=ko" data-role="button" data-icon="location" rel="external" target="_blank">STORE</a></li>
     <li><a href="pruncup_m.jsp" data-role="button" data-icon="recycle">JEJU PRUNCUP</a></li>
     <li><a href="echo_challenge_m.jsp" data-role="button" data-icon="comment">ECHO-CHALLENGE<span class="ui-li-count">NEW</span></a></li>
    </ul>
   </div>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>