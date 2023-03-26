package coty.communication.service;

import java.sql.Connection;
import java.util.List;

import coty.communication.dao.ReviewDao;
import coty.communication.vo.ReviewVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class ReviewService {

	//게시글 조회 (페이징 처리가 된)
		public List<ReviewVo> selectList(PageVo pageVo) throws Exception {
			
			//비즈니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			ReviewDao dao = new ReviewDao();
			List<ReviewVo> reviewList = dao.selectList(conn , pageVo);
			
			//close
			JDBCTemplate.close(conn);
			
			return reviewList;
		}
		
		//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			ReviewDao dao = new ReviewDao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}	
	
	
}
