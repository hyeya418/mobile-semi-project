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
	<div data-role="page" id="page" data-title="drink_fizzio">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[107051]_20210419112151972.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>쿨 라임 피지오</h4>
						<p>Cool Lime Starbucks Fizzio</p>  
						<p>1회 제공량 (kcal) 105</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[107025]_20210419104756955.jpg" style="border-radius: 50%;">
						<h4>블랙 티 레모네이드 피지오</h4>
						<p>Black Tea Lemonade Starbucks Fizzio</p>  
						<p>1회 제공량 (kcal) 65</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/05/[9200000004121]_20220517102911610.jpg" style="border-radius: 50%;">
						<h4>유자 패션 피지오</h4>
						<p>Yuja Passion Starbucks Fizzio</p>  
						<p>1회 제공량 (kcal) 145</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[107031]_20210419125349904.jpg" style="border-radius: 50%;">
						<h4>패션 탱고 티 레모네이드 피지오</h4>
						<p>Passion Tango Tea Lemonade Starbucks Fizzio</p>  
						<p>1회 제공량 (kcal) 65</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>