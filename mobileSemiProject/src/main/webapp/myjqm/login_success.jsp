<!--
* 로그인 성공 시 출력되는 페이지입니다.
- 관리자로 로그인해야만 회원명단 버튼에 접근이 가능합니다.
- 로그아웃 버튼 시 세션이 초기화되며 로그인 페이지에서 "로그아웃되었습니다." 메시지가 출력됩니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>session_success</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="../include/jquery-3.6.0.min.js"></script>
<script src="js/darkmode.js"></script>
<!-- 사용여부에 관계없이 각 페이지마다 세션체크하는 기능을 추가하는 것이 좋다. -->
<%@ include file="../include/starbucks_session_check.jsp" %>
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
   <h4><%= session.getAttribute("message") %></h4>
   <a href="#" data-role="button" data-ajax="false">마이페이지</a>
   <a href="#" data-role="button" data-ajax="false">쿠폰함</a>
   <hr>
  </div>
  <!-- 본문 영역 -->
  <div data-role="content" id="content">
   <h2>My Starbucks Jeju</h2>
   <h4><%= session.getAttribute("message") %> </h4>
   사용자 아이디 : <%= session.getAttribute("userid") %>
   <table>
    <tr>
     <td><button type="button" data-theme="b">홈으로</button></td>
     <td><button type="button" id="btnLogout" data-theme="b">로그아웃</button></td>
   </table>
   <hr>
   <!-- 로그아웃 버튼 -->
   <% String context=request.getContextPath(); %>
   <script type="text/javascript">
   $(function() {
	   $("#btnLogout").click(function() {
		location.href="/mobileSemiProject/login_servlet/logout.do";
		});
	});
   </script>
  <!-- 관리자일 때만 확인 가능한 목록 -->
  <% 
  if(userid != null && userid.equals("admin1")){ 
  %>
   <div>
    <h3>관리자 전용</h3>
     <button type="button" id="btnAdmin" data-icon="info">회원명단</button>
     <button type="button" id="btnAdmin" data-icon="gear">제품관리</button>
    <button type="button" id="btnAdmin" data-icon="gear">발주관리</button>
    <button type="button" id="btnAdmin" data-icon="bullets">게시판관리</button>
   </div>
  <% } %>
  <script type="text/javascript">
  $(function() {
	   $("#btnAdmin").click(function() {
			<%-- location.href="<%=context%>/memeber_servlet/list.do";  --%>
		 	location.href="/mobileSemiProject/myjqm/member.jsp";
		});
	});
  </script>
  </div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>