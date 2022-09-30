<!--
* 회원가입 페이지입니다.
- 모든 항목은 입력하지 않으면 알림창을 띄웁니다.
- 아이디, 비밀번호, 이름, 전화번호, 이메일은 자바스크립트의 정규 표현 식을 이용하여 입력 값의 조건을 설정했으며 각 입력 값이 설정한 조건에 맞지 않으면 알림창을 띄웁니다.
- 모든 항목이 정상 입력되면 DB 테이블에 회원이 추가되며 알림창으로 가입 환영 문구가 출력됩니다.
- 회원가입이 완료되면 기존의 입력 칸은 비워집니다. 
- 중복확인, 인증번호 전송은 버튼만 구현하였으며 기능은 없습니다.

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
<script src="js/join_m.js"></script>
<script src="js/darkmode.js"></script>
<script type="text/javascript">
$(function() {//페이지가 로딩되자마자 자동으로 실행되는 코드
	$("#btnSave").click(function() {
		insert();
	});
});

function insert(){
	var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&tel="+$("#tel").val()
	+"&birth="+$("#birth").val()
	+"&address1="+$("#address1").val();
	$.ajax({
		type : "post",
		url : "/mobileSemiProject/join_servlet/join.do",
		data : param,
		success : function(){
			//입력값 초기화
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#tel").val("");
			$("#birth").val("");
			$("#address1").val("");
		}
	});
}
</script>
<style type="text/css">
#event {line-height: 30px;}
.remark {font-size: 12px;}
</style>
</head>
<body>
	<div data-role="page" id="page" data-title="join_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
	  <div data-role="content">
	   <div id="join">
	    <h1>회원가입</h1>
	    <form name="input" method="post" >
	     <input id="userid" name="userid" placeholder="아이디">
	     <p class="remark">* 아이디는 영문자, 숫자를 사용해서 4~10자리로 입력하세요.</p>
	     <a href="#" data-role="button" data-theme="b">중복확인</a>
	     <input id="passwd" type="password" name="pw1" placeholder="비밀번호">
	     <p class="remark">* 비밀번호는 영문 대소문자, 숫자, 특수기호(~!@#$%^*)를 모두 사용해서 8~12자리로 입력하세요.</p>
	     <input id="name" name="name" placeholder="이름">
	     <p class="remark">* 이름은 한글만 입력하세요.</p>
	     <input id="birth" name="birth" placeholder="생년월일">
	     <p class="remark">* 생년월일은 950101 형식으로 입력하세요.</p>
	     <input id="tel" type="tel" name="tel" placeholder="전화번호">
	     <p class="remark">* 전화번호는 010-1234-5678 형식으로 입력하세요.</p>
	     <a href="#" data-role="button" data-theme="b">인증번호 전송</a>
	     <input id="email" type="email" name="email" placeholder="본인 확인 이메일">
	     <p class="remark">* 이메일은 abc@gmail.com 형식으로 입력하세요.</p>
	     <input id="address1" name="address1" placeholder="기본주소">
	     <p class="remark">* 주소는 oo시 oo구까지만 입력하세요.</p>
	     
	     <p id="event">💚스타벅스 제주만의 특별 이벤트💚<br>
	     *원하는 제주only 음료 1개를 선택하세요.<br>
	     회원가입 후 해당 음료의 ☕Free쿠폰을 드립니다.<br>
	     (마이 스타벅스-쿠폰함 확인)</p>
	     
	     <select name="coupon" data-native-menu="false" data-theme="b">
	      <option value="">선택</option>
	      <option value="제주 비자림 콜드브루">제주 비자림 콜드브루</option>
	      <option value="제주 까망 크림 프라푸치노">제주 까망 크림 프라푸치노</option>
	      <option value="제주 쑥떡 크림 프라푸치노">제주 쑥떡 크림 프라푸치노</option>
	      <option value="제주 그린 한라봉 모히또 블렌디드">제주 그린 한라봉 모히또 블렌디드</option>
	      <option value="제주 키위 오션 그린티">제주 키위 오션 그린티</option>
	      <option value="제주 까망 라떼">제주 까망 라떼</option>
	      <option value="제주 쑥쑥 라떼">제주 쑥쑥 라떼</option>
	     </select>
	     
	     <hr>
	     <a href="#" id="btnSave" data-role="button" onclick="join_check()" data-theme="b">가입하기</a>
	    </form>
	   </div>
			<!-- footer영역 -->
			<%@ include file="include/footer.jsp" %>
		</div>
	</div>
</body>
</html>