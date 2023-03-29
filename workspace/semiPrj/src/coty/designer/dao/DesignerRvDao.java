package coty.designer.dao;

import static coty.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import coty.admin.adminVo.DesignerVo;
import coty.designer.vo.DesignerRvVo;
import coty.member.vo.CartVo;
import coty.member.vo.MemberVo;
import coty.util.PageVo;

public class DesignerRvDao {
	//게시글 조회 (페이징 처리가 된)
		public List<DesignerRvVo> selectList(Connection conn , PageVo pageVo, DesignerVo deLoginVo) throws Exception {

			
			//SQL (close)
			String sql = "SELECT * FROM ( SELECT ROWNUM AS rnum, temp.*  FROM ( SELECT DR.NO, DR.R_NO, DR.S_NO, DR.SY_NO,DR.RE_NO, DR.RES, R.C_NO, S.NAME AS SHOP_NAME, SY.NAME AS STYLE_NAME FROM D_RES DR JOIN RESERVATION R ON R.NO = DR.R_NO JOIN SHOP S ON S.NO = DR.S_NO JOIN STYLE SY ON SY.NO = DR.SY_NO JOIN REVIEW RE ON RE.NO = DR.RE_NO WHERE R.NO = ? ORDER BY DR.NO DESC ) temp ) WHERE rnum BETWEEN ? AND ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, deLoginVo.getNo());
			int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1;
			int endRow = startRow + pageVo.getBoardLimit() - 1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj (List<ProductVo>)
			List<DesignerRvVo> designerRvList = new ArrayList<DesignerRvVo>();
			
			while( rs.next() ) {
				
				String no = rs.getString("NO");
				String rNo = rs.getString("R_NO");
				String sNo = rs.getString("S_NO");
				String syNo = rs.getString("SY_NO");
				String reNo = rs.getString("RE_NO");
				String res = rs.getString("RES");
				String cNo = rs.getString("C_NO");
				String shopName = rs.getString("SHOP_NAME");
				String styleName = rs.getString("STYLE_NAME");
				
				DesignerRvVo vo = new DesignerRvVo();
				vo.setNo(no);
				vo.setrNo(rNo);
				vo.setsNo(sNo);
				vo.setSyNo(syNo);
				vo.setReNo(reNo);
				vo.setRes(res);
				vo.setcNo(cNo);
				vo.setShopName(shopName);
				vo.setStyleName(styleName);
				
				
				designerRvList.add(vo);
			}
			System.out.println(designerRvList);
			return designerRvList;
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
		
		//상품 추가하기(insert)
		public int addProduct(Connection conn, CartVo cartVo) throws Exception {
			
			System.out.println(cartVo.toString());
		
			
			String sql = "INSERT INTO CART(NO, P_NO, C_NO, AMOUNT) VALUES (SEQ_CART_NO.NEXTVAL, ?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartVo.getpNo());
			pstmt.setString(2, cartVo.getcNo());
			pstmt.setString(3, cartVo.getAmount());
			int result = pstmt.executeUpdate();
			
			close(pstmt);
			
			return result;
		}
}
