<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.student_table td {width ="150";
}
</style>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	%>
	<%
	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	%>

	<h1>학생 정보</h1>
	<table border="1" id="student_table">
		<tr>
		<td >학번</td>
		<td><%=hakbun%></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><%=name%></td>
		</tr>
		
		<tr>
		<td>학년</td>
		<td><%=grade%></td>
		</tr>
		
		<tr>
		<td>과목</td>
		<td><%=subject%></td>
		</tr>
		
	</table>

</body>
</html>