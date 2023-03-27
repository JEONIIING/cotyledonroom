package coty.member.service;

import java.sql.Connection;
import java.util.List;

import coty.market.vo.ProductVo;
import coty.market.vo.Product_ImgVo;
import coty.member.dao.CartDao;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class CartService {

	//게시글 조회 (페이징 처리가 된)
		public List<ProductVo> selectList(PageVo pageVo) throws Exception {
			
			//비즈니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			CartDao dao = new CartDao();
			List<ProductVo> cartList = dao.selectList(conn , pageVo);
			
			//close
			JDBCTemplate.close(conn);
			
			return cartList;
		}
		
		//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			CartDao dao = new CartDao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}


}
