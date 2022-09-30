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
	<div data-role="page" id="page" data-title="food_sandwich">
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
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000000036]_20210421133443711.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>단호박 에그 샌드위치</h4>
      <p>Sweet Pumpkin Egg Sandwich</p>  
      <p>1회 제공량 (kcal) 353</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/07/[9300000003525]_20210727092021135.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>돌코롬 쫍지롱 와플 샌드</h4>
      <p>Banana Peanut Butter Waffle Sandwich</p>  
      <p>1회 제공량 (kcal) 805</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/11/[9300000001777]_20211103092722580.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>햄&루꼴라 올리브 샌드위치</h4>
      <p>Ham&Rucola Olive Sandwich</p>  
      <p>1회 제공량 (kcal) 388</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002435]_20210421164422886.jpg" style="border-radius: 50%;">
      <h4>브렉퍼스트 잉글리쉬 머핀</h4>
      <p>Breakfast English Muffin</p>  
      <p>1회 제공량 (kcal) 355</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001387]_20210421134542210.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>제주 녹차 베이컨 치즈 베이글</h4>
      <p>Jeju Green Tea Bacon Cheese Bagel</p>  
      <p>1회 제공량 (kcal) 470</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002490]_20210421142605801.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p> 
      <h4>제주 흑돼지 아보카도 샌드위치</h4>
      <p>Jeju Black Pork Avocado Sandwich</p>  
      <p>1회 제공량 (kcal) 360</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9300000004005]_20220420080006656.jpg" style="width: 80px; border-radius: 50%;">
      <h4>웜 그레인 보울 밀 박스</h4>
      <p>Warm Grain Bowl Meal Box</p>  
      <p>1회 제공량 (kcal) 335</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001927]_20210422101307127.jpg" style="width: 80px; border-radius: 50%;">
      <h4>에그 에그 샌드위치</h4>
      <p>Egg Egg Sandwich</p>  
      <p>1회 제공량 (kcal) 386</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001117]_20210422123208304.jpg" style="width: 80px; border-radius: 50%;">
      <h4>크랜베리 치킨 치즈 샌드위치</h4>
      <p>Cranberry Chicken Cheese Sandwich</p>  
      <p>1회 제공량 (kcal) 426</p>  
     </a>
    </li>
   </ul>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>