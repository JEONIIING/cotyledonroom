package coty.designer.service;

import java.sql.Connection;

import coty.admin.adminVo.DesignerVo;
import coty.util.JDBCTemplate;

public class DesignerService {

	//디자이너 계정 생성 
	public int createDesigner(DesignerVo deVo) {
		//비지니스 로직
		
		//conn 
		Connection conn = JDBCTemplate.getConnection();
		
		int result = 0;
		
		return result;
		
	}
	
}
