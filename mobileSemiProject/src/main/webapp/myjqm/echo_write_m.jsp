<!--
* 게시글 작성페이지입니다.
- fieldset을 이용하여 항목을 단일/중복 선택할 수 있도록 구현했습니다.
- 등록/취소 버튼을 클릭하면 게시판 화면으로 돌아가며 등록 버튼의 기능은 없습니다.

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
	<div data-role="page" id="page" data-title="echo_challenge_write" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
		<div data-role="content">
			<h1>글쓰기</h1>
			<button data-inline="true" data-mini="true" data-icon="camera" data-theme="b">사진 첨부</button>
			<button data-inline="true" data-mini="true" data-icon="video" data-theme="b">동영상 첨부</button>
			<input type="text" placeholder="제목을 입력하세요.">
			<textarea rows="10" cols="30" placeholder="내용을 입력하세요."></textarea>
			<div data-role="fieldcontain">
				<!-- fieldset1 -->
				<fieldset data-role="controlgroup">
					<legend>&nbsp;&nbsp;<strong>설정</strong></legend>
					<label for="type1">댓글 허용</label>
					<input type="checkbox" name="type1" id="type1" value="1" checked="checked">
					<label for="type2">공유 허용</label>
					<input type="checkbox" name="type2" id="type2" value="2" checked="checked">
					<label for="type3">복사 허용</label>
					<input type="checkbox" name="type3" id="type3" value="3" checked="checked">
					<label for="type4">자동출처 사용</label>
					<input type="checkbox" name="type4" id="type4" value="4">   
				</fieldset>
			</div>
			<!-- fieldset2 -->
			<fieldset id="open" data-role="controlgroup" data-type="horizontal" data-mini="true" data-theme="b">
				<label for="open1">전체 공개</label>
				<input type="radio" name="open" id="open1" value="1" checked="checked">
				<label for="open2">멤버 공개</label>
				<input type="radio" name="open" id="open2" value="2">
			</fieldset> 
			<hr>
		<!-- 게시글 등록, 취소 버튼  -->
		<a href="echo_challenge_m.jsp" data-role="button" data-icon="check" data-transition="slidedown">등록</a>
		<a href="echo_challenge_m.jsp" data-role="button" data-icon="back" data-transition="slidedown">취소</a>
		</div>
	</div>
</body>
</html>