<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id="";
try{
	id=(String)session.getAttribute("id");
	if(id==null||id.equals("")){
		response.sendRedirect("sessionLoginForm.jsp");//id가 null 값일 때 sessionLoginForm 페이지로 넘어감
	}
	else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션을 사용한 간단한 회원인증</title>
</head>
<body>
	<b><%=id %>님이 로그인하셨습니다</b>
	<form method="post" action="sessionLogout.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>
<%
}catch(Exception e){
e.printStackTrace();	
}
%>