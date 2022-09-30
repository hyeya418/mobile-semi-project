<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
int a=Integer.parseInt(request.getParameter("num"));
//들어오는 값이 없으므로 null 예외 발생 java.lang.NumberFormatException: null
%>

a : <%= a %>

</body>
</html>