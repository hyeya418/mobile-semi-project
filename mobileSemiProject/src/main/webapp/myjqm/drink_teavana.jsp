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
	<div data-role="page" id="page" data-title="drink_teavana">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000003998]_20220311105658286.jpg" style="border-radius: 50%;">
						 <p class="ui-li-aside">💗jeju</p>
						<h4>제주 키위 오션 그린티</h4>
						<p>Jeju Kiwi Ocean Green Tea</p>  
						<p>1회 제공량 (kcal) 195</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9200000004115]_20220418153154247.jpg" style="border-radius: 50%;">
						<h4>제주 그린 티 브리즈</h4>
						<p>Jeju Green Tea Breeze</p>  
						<p>1회 제공량 (kcal) 220</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000190]_20210419131723532.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 자몽 허니 블랙 티</h4>
						<p>Iced Grapefruit Honey Black Tea</p>  
						<p>1회 제공량 (kcal) 125</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000187]_20210419131229539.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>자몽 허니 블랙 티</h4>
						<p>Grapefruit Honey Black Tea</p>  
						<p>1회 제공량 (kcal) 125</p>  
					</a>
 				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[4004000000059]_20210415141656038.jpg" style="width: 80px; border-radius: 50%;">
						<h4>아이스 민트 블렌드 티</h4>
						<p>Iced Mint Blend Brewed Tea</p>  
 						<p>1회 제공량 (kcal) 0</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[4004000000056]_20210415135215632.jpg" style="width: 80px; border-radius: 50%;">
						<h4>민트 블렌드 티</h4>
						<p>Iced Mint Blend Brewed Tea</p>  
						<p>1회 제공량 (kcal) 0</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9200000002959]_20220411155904911.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 유자 민트 티</h4>
						<p>Iced Yuja Mint Tea</p>  
						<p>1회 제공량 (kcal) 145</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9200000002956]_20220411155551915.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>유자 민트 티</h4>
						<p>Yuja Mint Tea</p>  
						<p>1회 제공량 (kcal) 235</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[4004000000039]_20210415142055860.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 얼 그레이 티</h4>
						<p>Iced Earl Grey Brewed Tea</p>  
						<p>1회 제공량 (kcal) 0</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[4004000000036]_20210415143933425.jpg" style="width: 80px; border-radius: 50%;">
						<h4>얼 그레이 티</h4>
						<p>Earl Grey Brewed Tea</p>  
						<p>1회 제공량 (kcal) 0</p>  
					</a>
				</li>
				<li>
  					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/02/[9200000002966]_20220203082502987.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 돌체 블랙 밀크 티</h4>
						<p>Iced Dolce Black Milk Tea</p>  
						<p>1회 제공량 (kcal) 210</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/02/[9200000002963]_20220203082330522.jpg" style="width: 80px; border-radius: 50%;">
						<h4>돌체 블랙 밀크 티</h4>
						<p>Dolce Black Milk Tea</p>  
						<p>1회 제공량 (kcal) 250</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002499]_20210419130902541.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 제주 유기농 말차 라떼</h4>
						<p>Iced Malcha Latte from Jeju Organic Farm</p>  
						<p>1회 제공량 (kcal) 155</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002496]_20210419131039350.jpg" style="width: 80px; border-radius: 50%;">
						<h4>제주 유기농 말차 라떼</h4>
						<p>Malcha Latte from Jeju Organic Farm</p>  
						<p>1회 제공량 (kcal) 205</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>