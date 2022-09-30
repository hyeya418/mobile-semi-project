<!--
* 음료 메뉴 카테고리 페이지입니다.
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
	<div data-role="page" id="page" data-title="drinkmenu" data-theme="a">
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
				<li><a href="drink_espresso.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[30]_20210415144252244.jpg" style="width: 80px; border-radius: 50%;">에스프레소</a></li>
				<li><a href="drink_coldbrew.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000038]_20210430113202458.jpg" style="width: 80px; border-radius: 50%;">콜드브루</a></li>
				<li><a href="drink_frappuccino.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000002090]_20220329144732789.jpg" style="width: 80px; border-radius: 50%;">프라푸치노</a></li>
    			<li><a href="drink_blended.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000003997]_20220311105602098.jpg" style="width: 80px; border-radius: 50%;">블렌디드</a></li>
    			<li><a href="drink_teavana.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[9200000003998]_20220311105658286.jpg" style="width: 80px; border-radius: 50%;">티바나</a></li>
    			<li><a href="drink_fizzio.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[107051]_20210419112151972.jpg" style="width: 80px; border-radius: 50%;">피지오</a></li>
    			<li><a href="drink_decaf.jsp"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001301]_20200921171639781.jpg" style="width: 80px; border-radius: 50%;">디카페인 음료</a></li>
			</ul>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>