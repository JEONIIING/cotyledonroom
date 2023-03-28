package coty.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import coty.admin.adminVo.DesignerVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class DesignerListDao {
	//디자이너 목록 조회(SELECT, 페이징 처리가 된 상태)
	public List<DesignerVo> selectDesignerList(Connection conn, PageVo pageVo) throws Exception {
		//SQL
		String sql="SELECT * FROM ( SELECT ROWNUM RNUM, NO, NICK, ID, SHOP, PHONE FROM ( SELECT * FROM DESIGNER WHERE QUIT_YN='N' ORDER BY NO DESC ) ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit()+1;
		int endRow = startRow + pageVo.getBoardLimit() - 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();
		
		//rs 의 모든 row => obj (List <DesignerVo> )
		List<DesignerVo> designerList = new ArrayList<DesignerVo>();

		while(rs.next()){
			String no = rs.getString("NO");
//			String dbName = rs.getString("NAME");
			String dbId = rs.getString("ID");
			String dbShop = rs.getString("SHOP");
			String dbPhone = rs.getString("PHONE");
			String dbNick = rs.getString("NICK");
			
			DesignerVo deVo = new DesignerVo();
			deVo.setNo(no);
//			deVo.setName(dbName);
			deVo.setId(dbId);
			deVo.setShop(dbShop);
			deVo.setPhone(dbPhone);
			deVo.setNick(dbNick);
			
			designerList.add(deVo);
		}
		
		//close
		JDBCTemplate.close(rs);
		
		return designerList;
	}
	
	
	//디자이너 계정 전체 갯수 조회 (탈퇴되지 않은)
	public int selectCount(Connection conn) throws Exception {
		//SQL  -> 총 디자이너 계정 갯수 가져오기
		String sql="SELECT COUNT(*) AS CNT FROM DESIGNER WHERE QUIT_YN='N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		// rs => obj
		int cnt = 0;
		if(rs.next()) {
			cnt = rs.getInt("CNT"); 
		}
		
		//close
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return cnt;
	}

	//디자이너 상세정보 조회
	public DesignerVo selectInfo(Connection conn, String no) throws Exception {
		//sql
		String sql="SELECT * FROM DESIGNER WHERE NO= ? AND QUIT_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		
		//rs => obj
		DesignerVo designerVo = null;
		if(rs.next()) {
			String designerNo = rs.getString("NO");
			String designerID = rs.getString("ID");
			String designerPwd = rs.getString("PWD");
			String designerName = rs.getString("NAME");
			String designerPhone = rs.getString("PHONE");
			String designerEmail = rs.getString("EMAIL");
			String designerNick = rs.getString("NICK");
			String designerShop = rs.getString("SHOP");
			String src = rs.getString("SRC");
			String ex = rs.getString("EX");
			
			designerVo = new DesignerVo();
			designerVo.setNo(designerNo);
			designerVo.setId(designerID);
			designerVo.setPwd(designerPwd);
			designerVo.setName(designerName);
			designerVo.setPhone(designerPhone);
			designerVo.setEmail(designerEmail);
			designerVo.setNick(designerNick);
			designerVo.setShop(designerShop);
			designerVo.setSrc(src);
			designerVo.setEx(ex);
		}
		
		//close
		JDBCTemplate.close(pstmt);
		JDBCTemplate.close(rs);
		
		return designerVo;
	}
	
	
	
	
	
	
	
}
