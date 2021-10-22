<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>include 액션태그</h2>
<%request.setCharacterEncoding("utf-8"); %>
<form action="includeTest.jsp" method="post">
이름: <input type="text" name="name"><br>
페이지 이름: <input type="text" name="pagename"><br>
<input type="submit" value="입력완료"><br>
</form>
</body>
</html>