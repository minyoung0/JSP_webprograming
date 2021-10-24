<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 사용 로그인 폼</title>
</head>
<body>
<form method="post" action="cookieLoginPro.jsp">
아이디: <input type="text" name="id"><br>
패스워드: <input type="text" name="pw"><br>
<input type="submit" value="로그인">&nbsp;
<input type="submit" value="회원가입"  onclick="location.href='insertMemberForm.jsp'"> <!-- 클릭했을 때 insertMemberForm.jsp로 이동 -->


</form>
</body>
</html>