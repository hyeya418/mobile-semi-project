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
	<div data-role="page" id="page" data-title="food_snack">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>

		<div data-role="navbar">
			<ul>
				<li><a href="drinkmenu.jsp">음료</a></li>
				<li><a href="foodmenu.jsp">푸드</a></li>
			</ul>
		</div>

		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
		
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
  <div data-role="content">
   <ul data-role="listview" data-inset="true">
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001785]_20210422124351504.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>초콜릿 월넛 돔 쿠키</h4>
      <p>Chocolate Walnut Dome Cookie</p>  
      <p>1회 제공량 (kcal) 441</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001257]_20210421141438783.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>제주 오름 초콜릿 세트</h4>
      <p>Jeju Oreum Chocolate Set</p>  
      <p>1회 제공량 (kcal) 570</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001199]_20210422105814925.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>현무암 러스크</h4>
      <p>Basalt Rusk</p>  
      <p>1회 제공량 (kcal) 185</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110008078]_20210421132713182.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>바닐라 마카롱</h4>
      <p>Vanilla Macaron</p>  
      <p>1회 제공량 (kcal) 141</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001318]_20210421172246712.jpg" style="border-radius: 50%;">
      <h4>스트로베리 마카롱</h4>
      <p>Strawberry Macaron</p>  
      <p>1회 제공량 (kcal) 137</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001924]_20210421133005814.jpg" style="border-radius: 50%;">
      <h4>다크 초콜릿 마카롱</h4>
      <p>Dark Chocolate Macaron</p>  
      <p>1회 제공량 (kcal) 162</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002517]_20210421163620436.jpg" style="width: 80px; border-radius: 50%;">
      <h4>더블 치즈 베이글 칩</h4>
      <p>Double Cheese Bagel Chip</p>  
      <p>1회 제공량 (kcal) 295</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9300000004045]_20220317080849493.jpg" style="width: 80px; border-radius: 50%;">
      <h4>리얼 두부칩</h4>
      <p>Real Tofu Chip</p>  
      <p>1회 제공량 (kcal) 155</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002127]_20210422103800818.jpg" style="width: 80px; border-radius: 50%;">
      <h4>우리米 카스텔라</h4>
      <p>Rice Castella</p>  
      <p>1회 제공량 (kcal) 610</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/06/[9300000004134]_20220603100925103.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">🚗only DT</p> 
      <h4>까망베르 치즈 피낭시에</h4>
      <p>Camembert Cheese Financier</p>  
      <p>1회 제공량 (kcal) 163</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/06/[9300000004135]_20220603101215256.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">🚗only DT</p> 
      <h4>쇼콜라 피낭시에</h4>
      <p>Chocolate Financier</p>  
      <p>1회 제공량 (kcal) 178</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/05/[9300000004212]_20220520084527816.jpg" style="width: 80px; border-radius: 50%;">
      <h4>한입에 쏙 고구마</h4>
      <p>Real Sweet Potato</p>  
      <p>1회 제공량 (kcal) 249</p>  
     </a>
    </li>
   </ul>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>