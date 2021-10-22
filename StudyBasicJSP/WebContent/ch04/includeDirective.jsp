<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 디렉티브 연습</title>
</head>
<body>
 <h2>include 디렉티브 연습</h2>
 <% String name="Kim"; %>
 <%@include file="top.jsp" %>
 포함하는 페이지 includeDirective.jsp의 내용입니다.
 <%@ include file="bottom.jsp" %>
</body>
</html>