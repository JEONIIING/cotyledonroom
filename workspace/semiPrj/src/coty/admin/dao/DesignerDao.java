package coty.admin.dao;

import java.io.Closeable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import coty.admin.adminVo.DesignerVo;
import coty.util.JDBCTemplate;

import static coty.util.JDBCTemplate.*;

public class DesignerDao {
	
	//디자이너 계정 생성 (INSERT)
	public int createDesigner(Connection conn, DesignerVo deVo) throws Exception {
		int result = 0;
		//sql
		String sql="INSERT INTO DESIGNER(NO, ID, PWD, NAME ,PHONE, EMAIL, SHOP, NICK) VALUES(SEQ_DELIVERY_NO.NEXTVAL, ? ,? ,? ,? ,? ,? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, deVo.getId());
		pstmt.setString(2, deVo.getPwd());
		pstmt.setString(3, deVo.getName());
		pstmt.setString(4, deVo.getPhone());
		pstmt.setString(5, deVo.getEmail());
		pstmt.setString(6, deVo.getShop());
		pstmt.setString(7, deVo.getNick());
		result = pstmt.executeUpdate();
		
		//close
		close(pstmt);
		
		return result;
		
	}

	//디자이너 로그인(SELECT)
	public DesignerVo designerLogin(Connection conn, DesignerVo deVo) throws Exception {
		//sql
		String sql="SELECT * FROM DESIGNER WHERE ID = ? AND PWD = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, deVo.getId());
		pstmt.setString(2, deVo.getPwd());
		ResultSet rs = pstmt.executeQuery();
		
		DesignerVo deLoginVo = null;
		if(rs.next()) {
			String dbId = rs.getString("ID");
			String dbPwd = rs.getString("PWD");
			String dbName = rs.getString("NAME");
			String dbNick = rs.getString("NICK");
			
			deLoginVo = new DesignerVo();
			deLoginVo.setId(dbId);
			deLoginVo.setPwd(dbPwd);
			deLoginVo.setName(dbName);
			deLoginVo.setNick(dbNick);
		}
		
		//close
		close(pstmt);
		close(rs);
		
		
		return deLoginVo;
	}
	
	
	//디자이너 계정정보 수정 (UPDATE)
	public int deInfoEdit(Connection conn, DesignerVo designerVo) throws Exception {
		
		int result =0;
		//sql
		String sql="UPDATE DESIGNER SET PHONE= ? , EMAIL = ? , EX = ? ,SRC = ? WHERE ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, designerVo.getPhone());
		pstmt.setString(2, designerVo.getEmail());
		pstmt.setString(3, designerVo.getEx());
		pstmt.setString(4, designerVo.getSrc());
		pstmt.setString(5, designerVo.getId());
		
		result = pstmt.executeUpdate();
		
		//close
		JDBCTemplate.close(pstmt);
		
		return result;
	}
	

}
