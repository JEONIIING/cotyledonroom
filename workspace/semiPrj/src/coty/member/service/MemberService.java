package coty.member.service;

import java.sql.Connection;

import coty.member.dao.MemberDao;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;

public class MemberService {

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
}
