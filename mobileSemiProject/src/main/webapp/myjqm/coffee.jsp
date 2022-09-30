<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
* 스타벅스의 에스프레소 음료 소개 페이지입니다.
- 다양한 커피 종류를 간단한 이미지와 함께 간략하게 설명했습니다.
- 접이식 패널 내에는 해당 음료의 상세 내용과 중첩된 접이식 패널이 있습니다. 
- 중첩 접이식 패널을 활용하여 화면의 공간 효율성을 높였습니다. 

마지막 수정 : 2022-07-31
-->

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
<style type="text/css">
.font_set {
 font-size: 14px;
 font-style: italic;
 line-height: 25px;
}
</style>
</head>
<body>
	<div data-role="page" id="page" data-title="coffee_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 --> 
		<div data-role="content">
			<h1>에스프레소 음료</h1>
			<p><img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/espresso_classlcs_img01.jpg?v=210917" width="100%"></p>
			<p style="text-shadow: 5px 5px 10px #00592D;">"오늘날, 스타벅스에게 커피를 향한 세심한 노력은 다양한 음료 메뉴만큼이나 중요합니다."</p>
			
			<div data-role="collapsible-set" data-theme="b" data-content-theme="a">
				<div data-role="collapsible">
					<h3>도피오</h3>
					<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/doppio_img01.jpg" width="100%">
					<p class="font_set">
					도피오는 진한 에스프레소 샷 두 개를 섞은 음료입니다. 바리스타는 각각의 샷을 정확히 5초 동안 추출합니다. 
					샷에는 반드시 크레마, 바디, 하트로 형성된 세 개의 층이 있어야 하며, 지난 40여 년 동안 스타벅스가 도피오를 추출한 방식입니다.
					</p>
					<div data-role="collapsible">
						<h5>관련 제품</h5>
						<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[30]_20210415144252244.jpg" style="width: 30%; border-radius: 50%;"></a>
						<h5>&nbsp;에스프레소 콘 파나<h5>
					</div>
				</div>
				
				<div data-role="collapsible">
					<h3>에스프레소 마키아또</h3>
					<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/espresso_macchiato_img01.jpg" width="100%">
					<p class="font_set">에스프레소 마키아또는 전통적인 유럽 스타일 음료로 완벽하게 추출된 에스프레소 샷에 부드러운 우유 거품이 더해집니다.
					거품을 너무 많이 넣으면 에스프레소의 강렬하고 진한 풍미와 캐러멜 풍미를 가릴 수 있으므로, 거품은 아주 적은 양만 올립니다.</p>
					<div data-role="collapsible">
						<h5>관련 제품</h5>
						<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[25]_20210415144211211.jpg" style="width: 30%; border-radius: 50%;"></a>
						<h5>&nbsp;에스프레소 마키아또<h5>
					</div>
				</div>
				    
				<div data-role="collapsible">
				<h3>아메리카노</h3>
				<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/americano_img01.jpg" width="100%">
				<p class="font_set">아메리카노는 에스프레소 샷 두 개를 추출하여 바로 컵에 붓고, 그 위에 뜨거운 물을 재빠르게 부어 얇은 크레마 층이 형성되는 음료입니다.
				갓 분쇄된 에스프레소만이 깊은 풍미를 가진 아메리카노를 만들 수 있습니다.</p>
				<div data-role="collapsible">
					<h5>관련 제품</h5>
					<table>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[94]_20210430103337006.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 카페 아메리카노<h5></td>
							<td><h5>&nbsp;카페 아메리카노<h5></td>
						</tr>
					</table>
				</div>
				</div>
				    
				<div data-role="collapsible">
				<h3>마키아또</h3>
				<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/caramel_macchato_img01.jpg" width="100%">
				<p class="font_set">스팀 밀크 다음으로 크리미한 우유 거품이 올라가며, 진한 에스프레소를 부어 윗부분에 갈색 마크가 형성됩니다. 
				마지막으로 바리스타가 캐러멜 드리즐을 그물 모양으로 뿌리면 마치 예술 작품과 같은 마키아토가 완성됩니다.</p>
				<div data-role="collapsible">
					<h5>관련 제품</h5>
					<table>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110582]_20210415142706078.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[126197]_20210415154609863.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 카라멜 마키아또<h5></td>
							<td><h5>&nbsp;카라멜 마키아또<h5></td>
						</tr>
					</table>
				</div>
				</div>
				    
				<div data-role="collapsible">
				<h3>카푸치노</h3>
				<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/cappuccino_img01.jpg" width="100%">
				<p class="font_set">스타벅스의 바리스타는 카푸치노에 공기가 들어간 가벼운 거품과 맛있는 에스프레소가 만나 조화를 이루는 시점에 대해 고도의 트레이닝을 하며 테스트를 통과해야만 합니다. 
				무게에 따라 더 가벼운 카푸치노와 혹은 더 무거운 카푸치노를 원한다면 바리스타에게 미리 요청하세요. 취향에 맞는 카푸치노를 제조해드립니다.</p>
				<div data-role="collapsible">
					<h5>관련 제품</h5>
					<table>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110601]_20210415143400773.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[38]_20210415154821846.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 카푸치노<h5></td>
							<td><h5>&nbsp;카푸치노<h5></td>
						</tr>
					</table>
				</div>
				</div>
				   
				<div data-role="collapsible">
				<h3>라떼</h3>
				<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/latte_img01.jpg" width="100%">
				<p class="font_set">스타벅스 라떼는 스타벅스만의 진하고 다크한 에스프레소와 스팀 밀크에 다양한 커스텀을 추가하여 원하는 스타일로 즐길 수 있습니다. 
				달콤한 바닐라나 크리미한 캐러멜, 펌킨 스파이스와 같은 시즌 메뉴 등 원하는 것을 선택하여 가장 조화로운 스타벅스 라떼를 즐겨보세요.</p>
				<div data-role="collapsible">
					<h5>관련 제품</h5>
					<table>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[128695]_20210426092031969.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[128692]_20210426091933665.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 스타벅스 돌체 라떼<h5></td>
							<td><h5>&nbsp;스타벅스 돌체 라떼<h5></td>
						</tr>
						<tr>
							<td>
								 <a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110569]_20210415143035989.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[41]_20210415133833725.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 카페 라떼<h5></td>
							<td><h5>&nbsp;카페 라떼<h5></td>
						</tr>
					</table>
				</div>
				</div>
				    
				<div data-role="collapsible">
				<h3>모카</h3>
				<img src="https://image.istarbucks.co.kr/common/img/coffee/espresso/mocha_img01.jpg" width="100%">
				<p class="font_set">갓 추출한 에스프레소에 모카 시럽을 넣어 잘 섞어줍니다. 
				여기에 스팀 밀크를 추가하여 진한 커피 맛과 달콤한 초콜릿 맛이 잘 조화되도록 합니다. 더욱 달콤한 맛을 원한다면 휘핑크림을 올려 즐겨보세요.</p>
				<div data-role="collapsible">
					<h5>관련 제품</h5>
					<table>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110566]_20210415134334280.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[46]_20210415134438165.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 카페 모카<h5></td>
							<td><h5>&nbsp;카페 모카<h5></td>
						</tr>
						<tr>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110572]_20210415155545375.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
							<td>
								<a href="#"><img src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[128192]_20210415155639126.jpg" style="width: 60%; border-radius: 50%;"></a>
							</td>
						</tr>
						<tr>
							<td><h5>&nbsp;아이스 화이트 초콜릿 모카<h5></td>
							<td><h5>&nbsp;화이트 초콜릿 모카<h5></td>
						</tr>
					</table>
				</div>
				</div>	
			</div>
		</div>-		
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>

	</div>
</body>
</html>