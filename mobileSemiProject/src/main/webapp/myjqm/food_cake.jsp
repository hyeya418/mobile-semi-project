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
	<div data-role="page" id="page" data-title="food_cake">
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
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/07/[9300000004035]_20220701152205292.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>사인머스캣 스윗박스</h4>
      <p>Shine Muscat Sweet Box</p>  
      <p>1회 제공량 (kcal) 450</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001907]_20210421160603501.jpg" style="border-radius: 50%;">
      <h4>마스카포네 티라미수 케이크</h4>
      <p>Mascarpone Tiramisu Cake</p>  
      <p>1회 제공량 (kcal) 476</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/05/[9300000003393]_20210520100142603.jpg" style="border-radius: 50%;">
      <h4>The 촉촉 초콜릿 생크림 케이크</h4>
      <p>The Chocolate Fresh Cream Cake</p>  
      <p>1회 제공량 (kcal) 463</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9300000004043]_20220314152912551.jpg" style="border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>      
      <h4>멘지락 쑥팥 생크림 케이크</h4>
      <p>Mugwort&Red Bean Cream Cake</p>  
      <p>1회 제공량 (kcal) 295</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110007181]_20210421164728509.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>부드러운 생크림 카스텔라</h4>
      <p>Fresh Cream Castella</p>  
      <p>1회 제공량 (kcal) 565</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001557]_20210422112532808.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">👍</p>
      <h4>블루베리 쿠키 치즈 케이크</h4>
      <p>Blueberry Cookie Cheese Cake</p>  
      <p>1회 제공량 (kcal) 985</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001055]_20210421133631796.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>당근 현무암 케이크</h4>
      <p>Jeju Carrot Basalt Cake</p>  
      <p>1회 제공량 (kcal) 304</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/06/[9300000002857]_20200626140242045.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>새코롬 돌코롬 한라봉 케이크</h4>
      <p>Jeju Hallabong Chocolate Cake</p>  
      <p>1회 제공량 (kcal) 380</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/07/[9300000003468]_20210727081659217.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>제주 녹차 생크림 롤</h4>
      <p>Green Tea Cream Roll Cake</p>  
      <p>1회 제공량 (kcal) 466</p>  
     </a>
    </li>
    <li>
     <a href="#">
      <img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/07/[9300000003469]_20210727081817626.jpg" style="width: 80px; border-radius: 50%;">
      <p class="ui-li-aside">💗jeju</p>
      <h4>제주 땅콩 생크림 롤</h4>
      <p>Peanut Cream Roll Cake</p>  
      <p>1회 제공량 (kcal) 570</p>  
     </a>
    </li>
   </ul>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>