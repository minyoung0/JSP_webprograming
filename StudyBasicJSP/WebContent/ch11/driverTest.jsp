<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Connection conn=null;

try{
	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	String dbId="root";
	String dbPass="1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	out.println("제대로 연결되었습니다.");
}catch(Exception e){
	out.println("연결이 안됩니다");
	
}

%>
</body>
</html>