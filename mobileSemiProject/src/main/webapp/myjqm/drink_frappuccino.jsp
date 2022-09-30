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
	<div data-role="page" id="page" data-title="drink_frappuccino">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000002088]_20200921171733532.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>제주 까망 크림 프라푸치노</h4>
				  		<p>Jeju Black Sesame Cream Frappuccino</p>  
						<p>1회 제공량 (kcal) 600</p>  
					</a>
				</li>
		    	<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000002090]_20220329144732789.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>제주 쑥떡 크림 프라푸치노</h4>
						<p>Jeju Mugwort Cream Frappuccino</p>  
						<p>1회 제공량 (kcal) 460</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002502]_20210426100408048.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h5>제주 유기농 말차 크림 프라푸치노</h5>
						<p>Malcha Cream Frappuccino from Jeju Organic Farm</p>  
						<p>1회 제공량 (kcal) 230</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168066]_20210415154429750.jpg" style="width: 80px; border-radius: 50%;">
						<h4>초콜릿 크림 칩 프라푸치노</h4>
						<p>Chocolate Cream Chip Frappuccino</p>  
						<p>1회 제공량 (kcal) 300</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002760]_20210415133558068.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>더블 에스프레소 칩 프라푸치노</h4>
						<p>Double Espresso Chip Frappuccino</p>  
						<p>1회 제공량 (kcal) 265</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168004]_20210415134634723.jpg" style="width: 80px; border-radius: 50%;">
						<h4>모카 프라푸치노</h4>
						<p>Mocha Frappuccino</p>  
						<p>1회 제공량 (kcal) 280</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168007]_20210415144337428.jpg" style="width: 80px; border-radius: 50%;">
						<h4>에스프레소 프라푸치노</h4>
						<p>Espresso Frappuccino</p>  
						<p>1회 제공량 (kcal) 145</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168016]_20210415154152122.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>자바 칩 프라푸치노</h4>
						<p>Java Chip Frappuccino</p>  
						<p>1회 제공량 (kcal) 340</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168010]_20210415154711116.jpg" style="width: 80px; border-radius: 50%;">
						<h4>카라멜 프라푸치노</h4>
						<p>Caramel Frappuccinop>  
						<p>1회 제공량 (kcal) 300</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[168013]_20210415155746379.jpg" style="width: 80px; border-radius: 50%;">
						<h4>화이트 초콜릿 모카 프라푸치노</h4>
						<p>White Chocolate Mocha Frappuccino</p>  
						<p>1회 제공량 (kcal) 245</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>