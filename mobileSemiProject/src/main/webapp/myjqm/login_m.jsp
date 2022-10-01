<!--
* 로그인 정보 입력 페이지입니다.
- 로그인 정보 입력창과 로그인/회원가입 버튼을 구현했습니다.
- 아이디나 비밀번호로 회원 확인 후 잘못된 입력일 경우 하단에 문자열이 출력됩니다.
- 올바른 입력일 경우 로그인 성공 페이지로 이동하며, 회원의 이름, 아이디와 함께 환영 문구가 출력됩니다.
- 로그아웃 버튼 클릭 시 해당 계정에서 로그아웃되며 로그인 페이지로 돌아가 로그아웃되었다는 문자열이 출력됩니다.

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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="js/login_m.js"></script>
<script src="js/darkmode.js"></script>
<style type="text/css">
#page {
 text-align: center;
}
</style>
</head>
<body>
	<div data-role="page" id="page" data-title="login_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
		<div data-role="content">
			<div id="login">
				<h1>로그인</h1>
				<%-- <% String context=request.getContextPath(); %> --%>
				<form name="input" method="post" action="${path}/login_servlet/login.do">
					<input type="text" name="userid" id="userid" placeholder="아이디를 입력해 주세요.">
					<input type="password" name="passwd" placeholder="비밀번호를 입력해 주세요.">
					<input type="submit" value="로그인" data-theme="b" onclick="login_check()">
				</form>
				<!-- 로그인 실패 메시지, 로그아웃 메시지 출력 -->
				<%
				String message=request.getParameter("message");
				if(message != null){
				%>
				<span style="color: red;"><%= message %></span>
				<% } %>
				<hr>
				<div>
				<h4>회원이 아니신가요?</h4>
				<a href="join_m.jsp" data-role="button" data-theme="b">회원가입</a>
				<hr>
				</div>
			</div>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>