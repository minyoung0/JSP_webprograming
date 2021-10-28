<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<form method="post" action="sesionLoginPro.jsp">
		아이디:<input type="text" name="id" maxlength="50"><br>
		패스워드:<input type="text" name="passwd" maxlength="16"><br>
		<input type="submit" value="로그인"> <input type="button"
			value="회원가입" onclick.href='insertMemberForm.jsp'>

	</form>
</body>
</html>