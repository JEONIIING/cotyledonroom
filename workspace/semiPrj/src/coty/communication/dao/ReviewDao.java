package coty.communication.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import coty.communication.vo.ReviewVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class ReviewDao {

	//게시글 목록 조회 (페이징 처리가 된)
		public List<ReviewVo> selectList(Connection conn , PageVo pageVo) throws Exception {

			//SQL (close)
			String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT r.NO, r.CONTENT, r.ENROLL_DATE, r.DEL_YN, d.NAME as DESIGNER_NAME, s.NAME as SHOP_NAME, c.NICK as CUSTOMER_NICK, st.NAME as STYLE_NAME FROM REVIEW r INNER JOIN RESERVATION rv ON r.R_NO = rv.NO INNER JOIN DESIGNER d ON rv.D_NO = d.NO INNER JOIN SHOP s ON d.S_NO = s.NO INNER JOIN COSTOMER c ON rv.C_NO = c.NO INNER JOIN STYLE st ON rv.S_NO = st.NO ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1; 
			int endRow = startRow + pageVo.getBoardLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj (List<BoardVo>)
			List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
			
			while( rs.next() ) {
				
				String no = rs.getString("NO");
				//String rNo = rs.getString("R_NO");
				String content = rs.getString("CONTENT");
				String enrollDate = rs.getString("ENROLL_DATE");
				
				ReviewVo vo = new ReviewVo();
				vo.setNo(no);
				//vo.setrNo(rNo);
				vo.setContent(content);
				vo.setEnrollDate(enrollDate);
				
				reviewList.add(vo);
			}
			
			return reviewList;
		}
		
		
		//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount(Connection conn) throws Exception {
			
			//SQL (close)
			String sql = "SELECT COUNT(*) AS CNT FROM REVIEW WHERE DEL_YN = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			int cnt = 0;
			if( rs.next() ) {
				cnt = rs.getInt("CNT");
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return cnt;
		}


		//게시글 상세조회
		public ReviewVo selectOne(Connection conn, String no) throws Exception {
			
			//SQL
			String sql = "SELECT B.NO , B.TITLE , B.CONTENT , B.WRITER , B.ENROLL_DATE , B.HIT , A.CHANGE_NAME FROM BOARD B JOIN ATTACHMENT A ON (B.NO = A.REF_BOARD_NO) WHERE B.NO = ? AND B.DELETE_YN = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj
			ReviewVo reviewVo = null;
			if( rs.next() ) {
				String reviewNo = rs.getString("NO");
				String content = rs.getString("CONTENT");
				String enrollDate = rs.getString("ENROLL_DATE");
				String hit = rs.getString("HIT");
				String changeName = rs.getString("CHANGE_NAME");
				
				reviewVo = new ReviewVo();
				reviewVo.setNo(reviewNo);
				reviewVo.setContent(content);
				reviewVo.setEnrollDate(enrollDate);
				reviewVo.setHit(hit);
				reviewVo.setChangeName(changeName);
			}
			
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
			
			return reviewVo;


		}
}		