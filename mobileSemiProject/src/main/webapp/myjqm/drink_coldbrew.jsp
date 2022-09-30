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
	<div data-role="page" id="page" data-title="drink_coldbrew">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000002672]_20220311105511600.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>제주 비자림 콜드브루</h4>
						<p>Jeju Forest Cold Brew</p>  
						<p>1회 제공량 (kcal) 340</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002081]_20210415133656839.jpg" style="border-radius: 50%;">
						<h4>돌체 콜드 브루</h4>
						<p>Dolce Cold Brew</p>  
						<p>1회 제공량 (kcal) 265</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000487]_20210430112319040.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>바닐라 크림 콜드 브루</h4>
						<p>Vanilla Cream Cold Brew</p>  
						<p>1회 제공량 (kcal) 125</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000038]_20210430113202458.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>콜드 브루</h4>
						<p>Cold Brew</p>  
						<p>1회 제공량 (kcal) 5</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000003285]_20210416154437069.jpg" style="width: 80px; border-radius: 50%;">
						<h4>콜드 브루 오트 라떼</h4>
						<p>Cold Brew With Oat Milk</p>  
						<p>1회 제공량 (kcal) 120</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/08/[9200000003661]_20210819094346176.jpg" style="width: 80px; border-radius: 50%;">
						<h4>시그니처 더 블랙 콜드 브루</h4>
						<p>Signature The Black Cold Brew</p>  
						<p>1회 제공량 (kcal) 25</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>