package coty.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;

public class MemberDao {

	//회원가입
		public int join(Connection conn, MemberVo vo) throws Exception {
			
			//sql (close)
			
			String sql = "INSERT INTO MEMBER(NO, ID, PWD, NICK, HOBBY, NAME, SSNO, BIRTH, ADDRESS, EMAIL, GENDER_FM, PHONE) VALUES (SEQ_MEMBER_NO.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getNick());
			pstmt.setString(4, vo.getGender_fm());
			int result = pstmt.executeUpdate();
			
			JDBCTemplate.close(pstmt);
			
			return result;
		}
}
