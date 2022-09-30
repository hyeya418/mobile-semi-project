<!--
* 회원 상세 정보 출력용 페이지입니다.
- DB에 저장된 starbucks_member테이블의 회원의 상세정보를 출력합니다.
- 정보를 수정한 후 수정 버튼을 클릭하면 수정사항이 반영된 회원명단이 출력됩니다.
- 삭제 버튼을 클릭하면 삭제 확인 알림창을 출력하며, 해당 회원을 삭제된 명단이 출력됩니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="myjqm.StarbucksMemberDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>member_view</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<%@ include file="../include/starbucks_session_check.jsp" %>
<script type="text/javascript">
$(function() {
	$("#btnUpdate").click(function() {
		document.form1.action="/mobileSemiProject/member_servlet/update.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function() {
		if(confirm("삭제하시겠습니까?")) {
		    document.form1.action="/mobileSemiProject/member_servlet/delete.do";
			document.form1.submit();
		}
	});
});
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
 border-top : 1px solid white; 
 border-bottom : 1px solid white; 
 background: #eaeaea;
 height: 20px;
}
#table1 td { 
 border-top : 1px solid white; 
 border-bottom : 1px solid white; 
 height: 30px;
}
</style>
</head>
<body>
<%
StarbucksMemberDTO dto=(StarbucksMemberDTO)request.getAttribute("dto");
%>
<!-- 회원 정보 수정 -->
 <div data-role="content">
  <form name="form1" method="post">
   <table id="table1">
    <tr>
     <th>아이디</th>
     <td><%= dto.getUserid() %></td>
    </tr>
    <tr>
     <th>비밀번호</th>
     <td><input type="password" name="passwd" value="<%= dto.getPasswd() %>"></td>
    </tr>
    <tr>
     <th>이름</th>
     <td><input name="name" value="<%= dto.getName() %>"></td>
    </tr>
    <tr>
     <th>회원 가입 일자</th>
     <td><%= dto.getJoin_date() %></td>
    </tr>
    <tr>
     <th>이메일</th>
     <td><input name="email" value="<%= dto.getEmail() %>"></td>
    </tr>
    <tr>
     <th>휴대폰</th>
     <td><input name="tel" value="<%= dto.getTel() %>"></td>
    </tr>
    <tr>
     <th>생년월일</th>
     <td><%= dto.getBirth() %></td>
    </tr>
    <tr>
     <th>기본주소</th>
     <td><input name="address1" value="<%= dto.getAddress1() %>"></td>
    </tr>
    <tr>
     <td colspan="2" align="center">
      <input type="hidden" name="userid" value="<%=dto.getUserid() %>">
      <button type="button" id="btnUpdate">수정</button>
      <button type="button" id="btnDelete">삭제</button>
     </td>
    </tr>
   </table>
  </form>
 </div>
</body>
</html>