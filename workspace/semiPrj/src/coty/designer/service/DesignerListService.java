package coty.designer.service;

import java.sql.Connection;
import java.util.List;

import coty.admin.adminVo.DesignerVo;
import coty.admin.dao.DesignerListDao;
import coty.util.JDBCTemplate;

public class DesignerListService {
	
	//디자이너 목록 조회
	public List<DesignerVo> selectDesignerList() throws Exception {
		//비지니스 로직
		
		//conn 
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL(DAO)
		DesignerListDao dao = new DesignerListDao();
		List<DesignerVo> designerList = dao.selectDesignerList(conn);
		
		
		//close
		JDBCTemplate.close(conn);
		
		
		return designerList;
	}

}
