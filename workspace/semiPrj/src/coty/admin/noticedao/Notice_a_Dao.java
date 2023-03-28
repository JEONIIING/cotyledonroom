package coty.admin.noticedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class Notice_a_Dao {

	//게시글 조회 (페이징처리가 된)
	public List<Notice_a_Vo> selctList(Connection conn, PageVo pageVo) throws Exception {
		
		//SQL (close)
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT NO , TITLE , CONTENT , WRITER , ENROLL_DATE FROM NOTICE WHERE DEL_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit()+1 ;
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs - > obj
		List<Notice_a_Vo> noticeList = new ArrayList<Notice_a_Vo>();
		
		while (rs.next()) {
			
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String writer = rs.getString("WRITER");
			
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
		String sql = "INSERT INTO NOTICE(NO,WRITER,TITLE, CONTENT) VALUES(SEQ_NOTICE_NO.NEXTVAL, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, vo.getwriter());
		pstmt.setString(2, vo.getTitle());
		pstmt.setString(3, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
				
	}
	
	//게시글 전체 갯수 조회
	public int selectCount(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM NOTICE WHERE DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt("CNT");
		}
		
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return cnt;
	}
	
}
