<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String[] str = {"Java", "Spring", "JSP","C#"};
int i= (int)(Math.random()*4);//0~3 ������ ���� ��
%>

<%= str[i] %>�� ����ִ�.
</body>
</html>