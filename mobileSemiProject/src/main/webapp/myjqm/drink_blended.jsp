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
	<div data-role="page" id="page" data-title="drink_blended">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000003997]_20220311105602098.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
					    <h4>제주 그린 한라봉 모히또 블렌디드</h4>
					    <p>Jeju Green Hallabong Mojito Blended</p>  
					    <p>1회 제공량 (kcal) 160</p>  
    				</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[167004]_20210419130801597.jpg" style="border-radius: 50%;">
						<h4>망고 패션 프루트 블렌디드</h4>
						<p>Mango Passion Fruit Blended</p>  
						<p>1회 제공량 (kcal) 120</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000003276]_20210416154001403.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>딸기 딜라이트 요거트 블렌디드</h4>
						<p>Strawberry Delight Yogurt Blended</p>  
						<p>1회 제공량 (kcal) 370</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[169001]_20210419130701792.jpg" style="border-radius: 50%;">
						<h4>망고 바나나 블렌디드</h4>
						<p>Mango Banana Blended</p>  
						<p>1회 제공량 (kcal) 270</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000003443]_20210416154107695.jpg" style="width: 80px; border-radius: 50%;">
						<h4>민트 초콜릿 칩 블렌디드</h4>
						<p>Mint Chocolate Chip Blended</p>  
						<p>1회 제공량 (kcal) 455</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/08/[9200000003660]_20210805164133783.jpg" style="width: 80px; border-radius: 50%;">
								<h4>레드 파워 스매시 블렌디드</h4>
								<p>Red Power Smash Blended</p>  
								<p>1회 제공량 (kcal) 270</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002766]_20210419125528821.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>피치 & 레몬 블렌디드</h4>
						<p>Peach & Lemon Blended</p>  
						<p>1회 제공량 (kcal) 190</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>