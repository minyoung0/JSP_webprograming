<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% Timestamp now = new Timestamp(System.currentTimeMillis()); %>
top.jsp입니다. <p>
<%=now.toString() %>
</body>
</html>