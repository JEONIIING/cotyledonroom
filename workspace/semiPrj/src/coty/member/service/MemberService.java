package coty.member.service;

import java.sql.Connection;

import coty.member.dao.MemberDao;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;
import oracle.jdbc.logging.annotations.Log;

public class MemberService {
		//회원가입
		public int join(MemberVo vo) throws Exception {
			
			//비지니스 로직 (중복성,비밀번호 정규식추가하기)
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//sql (dao)	
			MemberDao dao = new MemberDao();
			int result = dao.join(conn, vo);
		
			//tx , close
			if(result == 1) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			
			JDBCTemplate.close(conn);
			
			return result;
		}

		//로그인
		public MemberVo login(MemberVo vo) throws Exception {
			
			//비지니스 로직
			
			
			//conn	
			Connection conn = JDBCTemplate.getConnection();
			
			//sql (dao)
			MemberDao dao = new MemberDao();
			MemberVo loginMember = dao.login(conn ,vo);
			
			//tx,close
			//로그인은 셀렉트이기때문에 tx 필요없음 (if문,commit,rollback)
			JDBCTemplate.close(conn);
			
			return loginMember;
		}
		
	}//class
