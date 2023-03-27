package coty.designer.service;

import java.sql.Connection;

import coty.admin.adminVo.DesignerVo;
import coty.admin.dao.DesignerDao;
import static coty.util.JDBCTemplate.*;

public class DesignerService {

	//디자이너 계정 생성 
	public int createDesigner(DesignerVo deVo) throws Exception {
		//비지니스 로직
		
		//conn 
		Connection conn = getConnection();
		
		int result = 0;
		//Dao
		DesignerDao dao = new DesignerDao();
		result = dao.createDesigner(conn, deVo);
		
		//tx, close
		if(result == 1) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}

	//디자이너 로그인
	public DesignerVo designerLogin(DesignerVo deVo) throws Exception {
		//conn
		Connection conn = getConnection();
		
		//dao
		DesignerDao dao = new DesignerDao();
		DesignerVo desingerVo = dao.designerLogin(conn, deVo);
		
		//close
		close(conn);
		
		
		return desingerVo;
	}
	
	
	
	
}
