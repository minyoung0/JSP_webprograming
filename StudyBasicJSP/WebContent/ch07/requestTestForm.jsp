<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>학번, 이름, 학년, 선택과목을 입력하는 폼</h1>
<form action="requestTestPro.jsp" method="post">
학번: <input type="text" name="hakbun"><br>
이름: <input type="text" name="name"><br>
학년: <input type="radio" name="grade" value="1" checked> 1학년 &nbsp;
<input type="radio" name="grade" value="2">2학년&nbsp;
<input type="radio" name="grade" value="3">3학년&nbsp;
<input type="radio" name="grade" value="4">4학년<br>
선택과목: <select name="subject">
<option value="JAVA">JAVA</option>
<option value="Spring">Spring</option>
<option value="JSP">JSP</option>
<option value="C">C</option>
</select><br>
 <input type="submit" value="입력완료"><br>
</form>
</body>
</html>