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
	<div data-role="page" id="page" data-title="drink_decaf">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001302]_20200921171804529.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>아이스 제주 까망 라떼</h4>
						<p>Iced Jeju Black Sesame Latte</p>  
						<p>1회 제공량 (kcal) 440</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001301]_20200921171639781.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>제주 까망 라떼</h4>
						<p>Jeju Black Sesame Latte</p>  
						<p>1회 제공량 (kcal) 445</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000002089]_20200921171510982.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>제주 쑥쑥 라떼</h4>
						<p>Jeju Mugwort Latte</p>  
						<p>1회 제공량 (kcal) 425</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/08/[9200000003671]_20210805164103847.jpg" style="border-radius: 50%;">
						<h4>레드 파워 스매셔</h4>
						<p>Red Power Smasher</p>  
						<p>1회 제공량 (kcal) 370</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110621]_20210415140901611.jpg" style="width: 80px; border-radius: 50%;">
						<h4>아이스 시그니처 초콜릿</h4>
	  					<p>Iced Signature Chocolate</p>  
						<p>1회 제공량 (kcal) 325</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[72]_20210415140949967.jpg" style="width: 80px; border-radius: 50%;">
						<h4>시그니처 핫 초콜릿</h4>
						<p>Signature Hot Chocolate</p>  
						<p>1회 제공량 (kcal) 500</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>