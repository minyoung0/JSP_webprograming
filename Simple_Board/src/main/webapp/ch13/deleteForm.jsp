<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="color.jspf"%>
<%
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">

</script>
<body>
<p>글 삭제</p>
<br>
<form method="post" name="delForm" action="deletePro.jsp?pageNum=<%=pageNum%>" onsubmit="return deleteSave()">
<table>
<tr height="30">
<td align=center bgcolor="<%=value_c %>">
<b>비밀번호를 입력해주세요</b>
</tr>
<tr height="30">
<td align="center">비밀번호: 
<input type="password" name="passwd" size="8" maxlength="12">
<input type="hidden" name="num" value="<%=num%>"></td>
</tr>
<tr height="30">
<td align=center bgcolor="<%=value_c%>">
<input type="submit" value="글삭제">
<input type="button" value="글목록" onclick="document.location.gref='list.jsp?pageNum=<%=pageNum%>'">
</td>
</tr>
</table>
</form>
</body>
</html>