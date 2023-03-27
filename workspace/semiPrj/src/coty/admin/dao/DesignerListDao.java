package coty.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import coty.admin.adminVo.DesignerVo;
import coty.util.JDBCTemplate;

public class DesignerListDao {
	//디자이너 목록 조회(SELECT)
	public List<DesignerVo> selectDesignerList(Connection conn) throws Exception {
		//SQL
		String sql="SELECT * FROM DESIGNER WHERE QUIT_YN='N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs 의 모든 row => obj (List <DesignerVo> )
		List<DesignerVo> designerList = new ArrayList<DesignerVo>();

		while(rs.next()){
			String no = rs.getString("NO");
			String dbName = rs.getString("NAME");
			String dbId = rs.getString("ID");
			String dbShop = rs.getString("SHOP");
			String dbPhone = rs.getString("PHONE");
			String dbNick = rs.getString("NICK");
			
			DesignerVo deVo = new DesignerVo();
			deVo.setNo(no);
			deVo.setName(dbName);
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
	
}
