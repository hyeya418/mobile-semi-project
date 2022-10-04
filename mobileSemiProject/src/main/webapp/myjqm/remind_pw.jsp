<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="js/darkmode.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btnCheckPw").click(function(){
			
			if($("#userid_").val()==""){
				alert("아이디를 입력해 주세요.");
				$("#userid_").focus();
				return;
			}
			
			var email = $("#email");
			if(email.val()==""){
				alert("이메일을 입력해 주세요.");
				email.focus();
				return;
			}
			
			var exp5 = /^[a-z0-9]{2,}@[a-z0-9]{2,}\.[a-z]{2,}$/;
			if(!exp5.test(email.val())){
				alert("이메일 형식이 잘못되었습니다.");
				email.focus();
				return;
			}
			
			var param = "userid=" + $("#userid_").val()
						+"&email="+$("#email").val();
			
			$.ajax({
				type : "post",
				url : "${path}/login_servlet/remind_pw.do",
				async : false,
				data : param,
				success : function(result){
					if(confirm(result)){
						location.href="login_m.jsp"
					};
				}
			});
		});
	});
</script>
</head>
<body>
	<div data-role="page" id="page" data-title="remind_pw_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
		<div data-role="content">
			<h1>비밀번호 찾기</h1>
			<h4>아이디와 이메일 주소를 입력해 주세요.</h4>
			<input name="userid_" id="userid_" placeholder="아이디를 입력해주세요." required>
			<input type="email" name="email" id="email" placeholder="이메일을 입력해주세요. (abc@gmail.com)" required>
			<input type="button" id="btnCheckPw" value="확인" data-theme="b">
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>