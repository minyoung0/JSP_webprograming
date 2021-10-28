<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String passwd=request.getParameter("passwd");

session.setAttribute("id",id);//속성명: "id", 속성값: id
session.setAttribute("passwd",passwd);
%>
id와 passwd 세션 속성을 설정하였습니다. <br>

id 속성의 값은 <%=(String)session.getAttribute("id") %> 이고<br> <!-- getAttribute를 사용해서 반환되는 속성의 값은 object라서 String 붙여줘야함 -->
passwd 속성의 값은 <%=(String)session.getAttribute("passwd") %> 입니다
</body>
</html>