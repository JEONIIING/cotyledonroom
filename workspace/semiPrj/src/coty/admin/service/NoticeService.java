package coty.admin.service;

import java.sql.Connection;
import java.util.List;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.admin.noticedao.Notice_a_Dao;
import coty.util.JDBCTemplate;

public class NoticeService {

	public List<Notice_a_Vo> selectList() throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		//SQL
		Notice_a_Dao dao = new Notice_a_Dao();
		List<Notice_a_Vo> noticeList = dao.selctList(conn);
		//close
		
		return noticeList;
	}

	public int write(Notice_a_Vo vo) throws Exception {
		// 비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		//SQL
		Notice_a_Dao dao = new Notice_a_Dao();
		int result = dao.write(conn, vo);
		//tx, close
		
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

}
