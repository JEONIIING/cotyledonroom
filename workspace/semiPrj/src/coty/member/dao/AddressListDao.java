package coty.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import coty.member.vo.AddressVo;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class AddressListDao {
//게시글 조회
	public List<AddressVo> selectList(Connection conn , PageVo pageVo, MemberVo loginMember) throws Exception {
		//sql
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM, TEMP.* FROM ( SELECT DELIVERY.NO, DELIVERY.C_NO, DELIVERY.ADDRESS AS ADNAME, CUSTOMER.ADDRESS AS DETAIL FROM DELIVERY INNER JOIN CUSTOMER ON DELIVERY.C_NO = CUSTOMER.NO WHERE DELIVERY.C_NO = ? ORDER BY CUSTOMER.NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1 ) * pageVo.getBoardLimit() +1;
		int endRow = startRow + pageVo.getBoardLimit() -1 ;
		pstmt.setString(1, loginMember.getNo());
		pstmt.setInt(2, startRow);
		pstmt.setInt(3, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs => obj 
		List<AddressVo> AddressList = new ArrayList<AddressVo>();
		while (rs.next()) {
			String no = rs.getString("NO");
			String c_no = rs.getString("C_NO");
			String adname = rs.getString("ADNAME");
			String detail = rs.getString("DETAIL");
	
			
			AddressVo vo = new AddressVo();
			vo.setNo(c_no);
			vo.setC_no(c_no);
			vo.setAdname(adname);
			vo.setDetail(detail);

			AddressList.add(vo);
			
		}		
		
		return AddressList;
	}
	
	//게시글 전체 갯수 조회
	public int selectCount(Connection conn) throws Exception {
		
		//sql
		String sql = "SELECT COUNT(*) AS CNT FROM DELIVERY";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		//rs => obj
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt("CNT");
		}
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return cnt;
		
	}
			

}
