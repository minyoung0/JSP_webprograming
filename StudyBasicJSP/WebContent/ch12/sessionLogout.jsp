<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%session.invalidate(); %> <!-- 세션에 설정되어 있는 세션의 속성을  모두 제거해서 세션을 무효화하는 메소드이다. -->
    <script>
    alert("로그아웃 되었습니다.");
    location.href="sessionMain.jsp";
    </script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>