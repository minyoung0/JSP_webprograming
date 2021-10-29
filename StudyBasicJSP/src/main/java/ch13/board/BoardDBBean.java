package ch13.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {

	private static BoardDBBean instance=new BoardDBBean();//.jsp 페이지에서 DB 연동빈인 BoardDBBean 클래스의 메소드에 접기시 ㅣ필요
	
	public static BoardDBBean getInstance() {
		return instance;
	}
	private BoardDBBean() {}
	
	//커넥션 풀로부터 Connection 객체를 얻어냄
	private Connection getConnection() throws Exception{
		Context initCtx= new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/my");
		return ds.getConnection();
	}
	
	//board 테이블에 글을 추가(insert)(=writePro.jsp 페이지에서 사용)
	public void insertArticle(BoardDataBean article) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rs=null;
		
		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
		String sql="";
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement("select max(num) from board");
			rs=pstmt.executeQuery();
			
			if(rs.next())
				number=rs.getInt(1)+1;
			else
				number=1;
			
			if(num!=0) {
				sql="update board set re_step=re_step+1";
				sql += "where ref=? and re_step> ?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.executeUpdate();
				re_step=re_step+1;
				re_level=re_level+1;
			}
			else {
				ref=number;
				re_step=0;
				re_level=0;
			}
			//쿼리를 작성
			sql="insert into board(writer,email,subject,passwd,reg_date,";
			sql+="ref,re_step,re_level,content,ip) values(?,?,?,?,?,?,?,?,?,?)" ;
		}catch(Exception e) {}
		finally {}
		
	}
}
