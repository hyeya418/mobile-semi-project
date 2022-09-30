<!--
* 회원 명단 출력용 페이지입니다.
- DB에 저장된 starbucks_member테이블의 회원 명단을 출력합니다.
- - 회원의 이름에 a태그를 이용하여 클릭 시 각 회원의 상세 정보를 확인할 수 있습니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="myjqm.StarbucksMemberDTO" %>
<%@ page import="java.util.Map" %> 
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>member_list</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<%@ include file="../include/starbucks_session_check.jsp" %>
<script type="text/javascript">
function view(userid) {
	document.form1.userid.value=userid;
	document.form1.submit();
}
</script>
<style type="text/css">
#table1 {
 margin: auto; 
 border-collapse: collapse; 
 width: 100%;
 font-size: 13px;
 text-align: center;
}
#table1 th {
 background: #eaeaea;
 height: 20px;
}
#table1 td { 
 border-top : 1px solid white; 
 border-bottom : 1px solid white; 
 height: 30px;
}
#table1 td a {
 text-decoration: none;
 font-weight: normal;
 color: black;
}
#table1 td a:hover {
 text-decoration: underline;
}
</style>
</head>
<body>
<%
 Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");//웹에서 가져옴
 List<StarbucksMemberDTO> list=(List<StarbucksMemberDTO>)map.get("list");//맵에서 가져옴
 int count=(int)map.get("count");
%>
 <!-- 회원 명단 -->  
 <div data-role="content">
  <h1>회원관리</h1>
  <h4>등록된 회원 수 : <%= count %>명</h4>
  <table id="table1">
   <tr>
    <th>이름</th>
    <th>아이디</th>
    <th>가입일자</th>
    <th>이메일</th>
    <th>핸드폰</th>
    <th>생년월일</th>
    <th>기본주소</th>
   </tr>
   <% for(StarbucksMemberDTO dto : list) { %>
   <tr>
    <td><a href="#" onclick="view('<%=dto.getUserid()%>')"><%= dto.getName() %></a></td>
    <td><%= dto.getUserid() %></td>
    <td><%= dto.getJoin_date() %></td>
    <td><%= dto.getEmail() %></td>
    <td><%= dto.getTel() %></td>
    <td><%= dto.getBirth() %></td>
    <td><%= dto.getAddress1() %> </td>
   </tr>
   <% } %>
  </table>
  <form name="form1" method="post" action="/mobileSemiProject/member_servlet/view.do">
   <input type="hidden" name="userid">
  </form>
  <hr>
  <!-- 로그아웃 버튼 -->
  <button type="button" id="btnLogout" data-theme="b">로그아웃</button>
  <button onclick="history.back()" data-theme="b">뒤로가기</button>
 </div>
<% String context=request.getContextPath(); %>
 <script type="text/javascript">
	$(function() {
		$("#btnLogout").click(function() {
		location.href="<%=context%>/login_servlet/logout.do";
		});
	});
 </script>
</body>
</html>