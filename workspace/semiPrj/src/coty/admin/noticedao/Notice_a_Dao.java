package coty.admin.noticedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.util.JDBCTemplate;

public class Notice_a_Dao {

	public List<Notice_a_Vo> selctList(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT N.NO , N.TITLE , N.CONTENT , N.WRITER , N.ENROLL_DATE , A.ID FROM NOTICE N JOIN ADMIN A ON N.WRITER = A.NO WHERE DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs - > obj
		List<Notice_a_Vo> noticeList = new ArrayList<Notice_a_Vo>();
		
		while (rs.next()) {
			
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String writer = rs.getString("ID");
			
			Notice_a_Vo vo = new Notice_a_Vo();
			vo.setNo(no);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setwriter(writer);
			
			noticeList.add(vo);
			
		}
		return noticeList;
	}

	public int write(Connection conn, Notice_a_Vo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO NOTICE(NO, TITLE, CONTENT, WRITER, ENROLL_DATE) VALUES(SEQ_NOTICE_NO.NEXTVAL, ?, ?, ?, SYSDATE)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getwriter());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
				
	}
	
}
