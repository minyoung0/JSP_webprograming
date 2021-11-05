<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch13.board.BoardDBBean"%>
<%@ page import="ch13.board.BoardDataBean"%>
<%@include file="color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body  bgcolor="<%=bodyback_c%>">
	<%
int num=Integer.parseInt(request.getParameter("num"));
 String pageNum=request.getParameter("pageNum");
try{
	BoardDBBean dbPro=BoardDBBean.getInstance();
	BoardDataBean article=dbPro.updateGetArticle(num);

%>
	<p>글 수정</p>
	<br>
	<form method="post" name="writeform"
		action="updatePro.jsp?pageNum=<%=pageNum %>"
		onsubmit="return writeSave()"> <!-- submit 버튼을 누르면 writesave함수가 실행되고 그 결과값을 리턴한다 -->
		<table>
			<tr>
				<td width="70" bgcolor="<%=value_c %>" align="center">이름</td>
				<td align="left" width="330">
				<input type="text" size="10" maxlength="10" name="writer" value="<%=article.getWriter() %>" style="ime-mode:active;">
				<input type="hidden" name="num" value="<%=article.getNum() %>" ></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">제목</td>
				<td width="330" align="left">
					<input type="text" size="40" maxlength="50" name="subject" value="<%=article.getSubject() %>" style="ime-mode:active;">
				</td>
				<!-- active:한글 -->
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">Email</td>
				<td width="330" align="left"><input type="text" size="40"
					maxlength="30" name="email" value="<%=article.getEmail() %>" style="ime-mode: inactive;"></td>
				<!-- active:한글 -->
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">내용</td>
				<td width="330" align="left"><textarea name="content" rows="13"
						cols="40" style="ime-mode: active;"><%=article.getContent() %>></textarea></td>

				<!-- active:한글 -->
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">비밀번호</td>
				<td width="330" align="left"><input type="text" size="8"
					maxlength="12" name="passwd" style="ime-mode: inactive;"></td>
				<!-- active:한글 -->
			</tr>
			<tr>
			<td colspan=2 bgcolor="<%=value_c%>" align="center">
			<input type="submit" value="글수정">
			<input type="reset" value="다시작성">
			<input type="button" value="목록보기" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
			</td>
			</tr>
		</table>
	</form>
<%}catch(Exception e){} %>
</body>
</html>