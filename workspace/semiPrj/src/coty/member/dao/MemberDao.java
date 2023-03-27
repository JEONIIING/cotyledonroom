package coty.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;

public class MemberDao {

	//회원가입
		public int join(Connection conn, MemberVo vo) throws Exception {
			
			//sql (close)
			
			String sql = "INSERT INTO CUSTOMER (NO, NAME, ID, PWD, NICK, SSNO, ADDRESS, EMAIL, GENDER_FM, PHONE) VALUES (seq_CUSTOMER_no.nextval, ?, ?, ?,? ,?,?, ?, ?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getId());
			pstmt.setString(3, vo.getPwd());
			pstmt.setString(4, vo.getNick());
			pstmt.setString(5, vo.getSsno());
			pstmt.setString(6, vo.getAddress());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getGender_fm());
			pstmt.setString(9, vo.getPhone());
		
			
			
			int result = pstmt.executeUpdate();
			
			JDBCTemplate.close(pstmt);
			
			return result;
		}

		//로그인
		public MemberVo login(Connection conn, MemberVo vo) throws Exception {
			//sql 실행 (close)
			
			String sql = "SELECT * FROM CUSTOMER WHERE ID = ? AND PWD = ? AND QUIT_YN = 'N'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			ResultSet rs = pstmt.executeQuery();
			
			//rs => MemberVo (obj 형태로 변환 )
			MemberVo loginMember = null;
			if(rs.next()) {
				String no = rs.getString("NO");
				String id = rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				
				
				loginMember = new MemberVo();
				loginMember.setNo(no);
				loginMember.setId(id);
				loginMember.setPwd(pwd);
				loginMember.setNick(nick);
				
				
			}
			
			return loginMember;
		}
		
	}
