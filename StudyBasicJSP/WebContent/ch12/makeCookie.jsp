<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String cookieName="id";
    Cookie cookie= new Cookie(cookieName,"hongkd");
    cookie.setMaxAge(60*2);//쿠키의 지속시간을 최대 2분으로 정함
    response.addCookie(cookie);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
"<%=cookieName %>" 쿠키가 생성되었습니다.
<form method="post" action="useCookie.jsp">
<input type="submit" value="생성된 쿠키 확인">
</form>
</body>
</html>