<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>이름과 나이를 입력하세요</h2>
<%request.setCharacterEncoding("utf-8"); %>
<%String name= request.getParameter("name");
int age= Integer.parseInt(request.getParameter("age"));

if(age>=20){
	out.println("<b>"+name+"</b>님의 나이는 20세 이상입니다");
}
else
{
	out.println("<b>"+name+"</b>님은 미성년입니다");
	}
%>

</body>
</html>