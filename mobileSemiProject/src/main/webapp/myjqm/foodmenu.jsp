<!--
* 푸드 메뉴 카테고리 페이지입니다.
- Header의 하단에 navbar를 구현하여 페이지 간의 이동 효율성을 높였습니다.
- listview로 메뉴 목록을 구현했습니다.
- 목록을 클릭하면 상세 메뉴와 정보를 구현한 페이지로 이동합니다.

마지막 수정 : 2022-07-31
-->
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
	<div data-role="page" id="page" data-title="foodmenu" data-theme="a">
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
    <li><a href="food_bread.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003223]_20210315170846073.jpg" style="width: 80px; border-radius: 50%;">브레드</a></li>
    <li><a href="food_cake.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001907]_20210421160603501.jpg" style="width: 80px; border-radius: 50%;">케이크</a></li>
    <li><a href="food_sandwich.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/11/[9300000001777]_20211103092722580.jpg" style="width: 80px; border-radius: 50%;">샌드위치 & 샐러드</a></li>
    <li><a href="food_snack.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001318]_20210421172246712.jpg" style="width: 80px; border-radius: 50%;">스낵 & 미니 디저트</a></li>
   </ul>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>