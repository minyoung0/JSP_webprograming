<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include ��Ƽ�� ����</title>
</head>
<body>
 <h2>include ��Ƽ�� ����</h2>
 <% String name="Kim"; %>
 <%@include file="top.jsp" %>
 �����ϴ� ������ includeDirective.jsp�� �����Դϴ�.
 <%@ include file="bottom.jsp" %>
</body>
</html>