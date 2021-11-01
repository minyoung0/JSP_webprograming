<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ch13.board.BoardDBBean"%>
<%@page import="ch13.board.BoardDataBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="tet/css">
</head>
<body bgcolor="<%=bodyback_c %>">
<%int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");\
try{
	BoardDBBean dbPro=BoardDBBean.getInstance();
	BoardDataBean article= dbPro.getArticle(num);
}
%>

</body>
</html>