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
	<div data-role="page" id="page" data-title="drink_espresso">
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
					<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[30]_20210415144252244.jpg" style="border-radius: 50%;">
					<h4>에스프레소 콘파나</h4>
					<p>Espresso Con Panna</p>  
					<p>1회 제공량 (kcal) 30</p>  
					</a>
				</li>
				<li>
     			<a href="#">
	     			<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001301]_20200921171639781.jpg" style="border-radius: 50%;">
	    			<h4>에스프레소 마키아또</h4>
					<p>Espresso Macchiato</p>  
					<p>1회 제공량 (kcal) 10</p>  
				</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000002089]_20200921171510982.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 카페 아메리카노</h4>
						<p>Iced Caffe Americano</p>  
						<p>1회 제공량 (kcal) 10</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/08/[9200000003671]_20210805164103847.jpg" style="border-radius: 50%;">
				   		<p class="ui-li-aside">👍</p>
						<h4>카페 아메리카노</h4>
						<p>Caffe Americano</p>  
						<p>1회 제공량 (kcal) 10</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110621]_20210415140901611.jpg" style="width: 80px; border-radius: 50%;">
						<h4>아이스 카라멜 마키아또</h4>
						<p>Iced Caramel Macchiato</p>  
						<p>1회 제공량 (kcal) 190</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[72]_20210415140949967.jpg" style="width: 80px; border-radius: 50%;">
	 					<h4>카라멜 마키아또</h4>
						<p>Caramel Macchiato</p>  
						<p>1회 제공량 (kcal) 200</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[72]_20210415140949967.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 카페라떼</h4>
						<p>Iced Caffe Latte</p>  
						<p>1회 제공량 (kcal) 110</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[72]_20210415140949967.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>카페라떼</h4>
						<p>Caffe Latte</p>  
						<p>1회 제공량 (kcal) 180</p>  
					</a>
				</li>
				<li>
	  				<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[128695]_20210426092031969.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>아이스 스타벅스 돌체라떼</h4>
						<p>Iced Starbucks Dolce Latte</p>  
						<p>1회 제공량 (kcal) 230</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[128692]_20210426091933665.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>스타벅스 돌체라떼</h4>
						<p>Starbucks Dolce Latte</p>  
						<p>1회 제공량 (kcal) 255</p>  
						</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110601]_20210415143400773.jpg" style="width: 80px; border-radius: 50%;">
						<h4>아이스 카푸치노</h4>
						<p>Iced Cappuccino</p>  
						<p>1회 제공량 (kcal) 115</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[38]_20210415154821846.jpg" style="width: 80px; border-radius: 50%;">
						<h4>카푸치노</h4>
						<p>Cappuccino</p>  
						<p>1회 제공량 (kcal) 110</p>  
					</a>
				</li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div> 
</body>
</html>