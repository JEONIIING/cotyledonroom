package coty.designer.service;

import java.sql.Connection;

import coty.admin.adminVo.DesignerAttachmentVo;
import coty.admin.adminVo.DesignerVo;
import coty.admin.dao.DesignerDao;
import coty.util.JDBCTemplate;

import static coty.util.JDBCTemplate.*;

public class DesignerService {

	//디자이너 계정 생성 (+첨부파일 인터트)
	public int createDesigner(DesignerVo deVo, DesignerAttachmentVo atVo) throws Exception {
		//비지니스 로직
		
		//conn 
		Connection conn = getConnection();
		
		int result = 0;
		DesignerDao dao = new DesignerDao();

		//Dao == 계정 인서트
		result = dao.createDesigner(conn, deVo);
		
		//Dao == 첨부파일 인서트
		int atResult = dao.insertAttachment(conn, atVo);
		
		//tx, close
		if(result * atResult ==1) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result * atResult;
		
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

	//디자이너 첨부파일 저장
	public int insertAttachment(DesignerAttachmentVo atVo) throws Exception {
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(Dao)
		DesignerDao dao = new DesignerDao();
		int result = dao.insertAttachment(conn, atVo);
		
		//tx , close
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	//디자이너 계정정보 수정
	public int deInfoEdit(DesignerVo editVo) throws Exception {
		int editResult =0;
		//비지니스 로직 
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//sql(Dao)
		DesignerDao dao = new DesignerDao();
		
		editResult = dao.deInfoEdit(conn, editVo);
		
		//tx , close
		if(editResult == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return editResult;
		
	}
	
	//디자이너 계정 탈퇴
	public int deInfoEdit(String designerNo) throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL(DAO)
		DesignerDao dao = new DesignerDao();
		int result = dao.designerQuit(conn, designerNo);
		
		//tx, close
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	
	
	
	
	
	
}
