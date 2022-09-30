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
	<div data-role="page" id="page" data-title="food_bread">
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
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9300000004028]_20220314152820975.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>피넛 쑥 떡 스콘</h4>
						<p>Peanut Mugwort Rice Cake Scone</p>  
						<p>1회 제공량 (kcal) 490</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001361]_20210421133918737.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>거문 오름 크루아상</h4>
						<p>Black Mountain Croissant</p>  
						<p>1회 제공량 (kcal) 391</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003334]_20210310092057351.jpg" style="border-radius: 50%;">
						<p class="ui-li-aside">👍</p>
						<h4>바질 토마토 크림치즈 베이글</h4>
						<p>Basil Tomato Cream Cheese Bagel</p>  
						<p>1회 제공량 (kcal) 517</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003223]_20210315170846073.jpg" style="border-radius: 50%;">
						<h4>리얼 블루베리 베이글</h4>
						<p>Blueberry Bagel</p>  
						<p>1회 제공량 (kcal) 261</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/07/[9300000003520]_20210727081330163.jpg" style="width: 80px; border-radius: 50%;">
						<p class="ui-li-aside">💗jeju</p>
						<h4>오름 치즈 케이츄리</h4>
						<p>Oreum Cheese Cake Pastry</p>  
						<p>1회 제공량 (kcal) 590</p>  
					</a>
				</li>
				<li>
					<a href="#">
						<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001557]_20210422112532808.jpg" style="width: 80px; border-radius: 50%;">
						<h4>클래식스콘</h4>
						<p>Classic Scone</p>  
						<p>1회 제공량 (kcal) 468</p>  
					</a>
				</li>
				<li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9300000004025]_20220406130412323.jpg" style="width: 80px; border-radius: 50%;">
      <h4>소시지 & 올리브 미니파이</h4>
      <p>Sausage&Olive Mini Pie</p>  
      <p>1회 제공량 (kcal) 545</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002489]_20210421134243043.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>주상 절리 파이</h4>
      <p>Jeju Columnar joint Pie</p>  
      <p>1회 제공량 (kcal) 505</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110006070]_20210422111451589.jpg" style="width: 80px; border-radius: 50%;">
      <h4>하트 파이</h4>
      <p>Heart Pie</p>  
      <p>1회 제공량 (kcal) 466</p>  
     </a>
    </li>
   </ul>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>