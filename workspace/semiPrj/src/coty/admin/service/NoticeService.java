package coty.admin.service;

import java.sql.Connection;
import java.util.List;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.admin.noticedao.Notice_a_Dao;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class NoticeService {

	//게시글 조회
	public List<Notice_a_Vo> selectList(PageVo pageVo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		//SQL
		Notice_a_Dao dao = new Notice_a_Dao();
		List<Notice_a_Vo> noticeList = dao.selctList(conn, pageVo);
		//close
		JDBCTemplate.close(conn);
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
	
	//게시글 전체갯수 조회
	public int selectCount() throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL
		Notice_a_Dao dao = new Notice_a_Dao();
		int result = dao.selectCount(conn);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		return result;
	}

}
