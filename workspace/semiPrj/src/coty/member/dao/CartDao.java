package coty.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import coty.market.vo.Product_ImgVo;
import coty.market.vo.ProductVo;
import static coty.util.JDBCTemplate.*;

import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class CartDao {

	//게시글 조회 (페이징 처리가 된)
	public List<ProductVo> selectList(Connection conn , PageVo pageVo) throws Exception {

		//SQL (close)
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM, TEMP.* FROM ( SELECT P.NO, P.C_NO, P.NAME, P.PRICE, P.DELETE_YN, P.EX, P.SRC, O.AMOUNT FROM PRODUCT P JOIN ORD_LIST O ON P.NO = O.P_NO WHERE P.DELETE_YN = 'N' ORDER BY P.NO DESC ) TEMP) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1;
		int endRow = startRow + pageVo.getBoardLimit() - 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<ProductVo>)
		List<ProductVo> cartList = new ArrayList<ProductVo>();
		
		while( rs.next() ) {
			
			String no = rs.getString("NO");
			String name = rs.getString("NAME");
			String price = rs.getString("PRICE");
			String ex = rs.getString("EX");
			String src = rs.getString("SRC");
			String amount = rs.getString("AMOUNT");
			
			ProductVo vo = new ProductVo();
			vo.setNo(no);
			vo.setName(name);
			vo.setPrice(price);
			vo.setEx(ex);
			vo.setSrc(src);
			vo.setAmount(amount);
			
			cartList.add(vo);
		}
		System.out.println(cartList);
		return cartList;
	}

	public int selectCount(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM PRODUCT WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int cnt = 0;
		if( rs.next() ) {
			cnt = rs.getInt("CNT");
		}
		
		close(rs);
		close(pstmt);
		
		return cnt;
	}

	

}//class
