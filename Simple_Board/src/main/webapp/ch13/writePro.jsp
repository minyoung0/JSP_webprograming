<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ch13.board.BoardDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="article" scope="page" class="ch13.board.BoardDataBean">
	<jsp:setProperty name="article" property="*"/></jsp:useBean><!-- writeform.jsp 페이지에서 입력한 글을 가지고 boarddatebean클래스의  객체 article 생성 -->

	<%
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
		article.setIp(request.getRemoteAddr());
		
		BoardDBBean dbPro=BoardDBBean.getInstance();
		dbPro.insertArticle(article);
		
		response.sendRedirect("list.jsp"); //글쓰기처리에 성공하면 responcse 객체에 sendRedirect("list.jsp") 메소드를 사용해서 list.jsp 페이지로 프로그램 제어ㄱ ㅏ이동
	%>