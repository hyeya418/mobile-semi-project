<!--
* 관리자 페이지의 메인입니다.
- 관리자로 로그인해야만 접근 가능한 페이지입니다.
- DB에 저장 된 starbucks_member테이블의 값과 연결했습니다.
- 회원 명단 조회, 회원정보 수정 및 삭제를 할 수 있습니다.
- 헤더의 우측 버튼인 로그인 패널에는 관리자 전용 페이지의 버튼만 구현했을 뿐, 기능은 없습니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>member</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="js/darkmode.js"></script>
<%@ include file="../include/starbucks_session_check.jsp" %>
<script type="text/javascript">
$(function() {//페이지가 로딩되자마자 실행되는 코드
	list();
});

//회원 목록 출력 함수
function list() {
	//회원목록을 div영역에 출력 (백그라운드로 실행)
	$.ajax({
		type : "post",
		url : "/mobileSemiProject/member_servlet/list.do",
		success : function(result) {//콜백함수
			console.log(result);//개발자모드 콘솔 출력
			$("#memberlist").html(result);//회원목록을 div영역에 출력
		}
	});
}
</script>
<style type="text/css">
#notice {
 width: 100%;
 font-size: 14px;
}
</style>
</head>
<body>
	<div data-role="page" id="page" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
  <!-- header영역의 오른쪽 user아이콘 클릭 시 로그인 패널 -->
  <div data-role="panel" id="login_panel" data-display="overlay" data-position="right" data-theme="b">
   <a href="#" data-role="button" data-rel="close" data-iconpos="notext" data-icon="delete"></a>
   <h2>My Starbucks Jeju</h2>
   <h4>관리자님, 안녕하세요.</h4>
   <a href="#" data-role="button" data-ajax="false">회원관리</a>
   <a href="#" data-role="button" data-ajax="false">메뉴관리</a>
   <a href="#" data-role="button" data-ajax="false">발주관리</a>
   <a href="#" data-role="button" data-ajax="false">게시판관리</a>
   <hr>
  </div>
  <div id="notice" data-role="content">
   <div id="memberlist"></div>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>