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
		//탈퇴
		public int quit(MemberVo loginMember) throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//sql
			MemberDao dao = new MemberDao();
			int result = dao.quit(conn, loginMember);
			
			//tx close
			if(result == 1) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			JDBCTemplate.close(conn);
			return result;
		}
		
		// 아이디 찾기
	    public String findId(MemberVo vo) throws Exception{       
    	  
    	//conn
    	Connection conn = JDBCTemplate.getConnection();
    	
    	//sql 실행
          MemberDao dao = new MemberDao();
          String result = dao.findId(conn, vo);
          
        //tx close
			if(result != null) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			JDBCTemplate.close(conn);
			return result;
		}
	}

