package coty.designer.service;

import java.sql.Connection;
import java.util.List;

import coty.admin.adminVo.DesignerAttachmentVo;
import coty.admin.adminVo.DesignerVo;
import coty.admin.dao.DesignerDao;
import coty.member.dao.CartDao;
import coty.member.vo.CartVo;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

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
	
	//디자이너 계정정보 수정 (+첨부파일 update)
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
	//게시글 조회 (페이징 처리가 된)
		public List<CartVo> selectList(PageVo pageVo, MemberVo loginMember) throws Exception {
			
			//비즈니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			CartDao dao = new CartDao();
			List<CartVo> cartList = dao.selectList(conn , pageVo, loginMember);
			
			//close
			JDBCTemplate.close(conn);
			
			return cartList;
		}
		
		//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//SQL (DAO)
			CartDao dao = new CartDao();
			int result = dao.selectCount(conn);
			
			//close
			JDBCTemplate.close(conn);
			
			return result;
		}

		public int addProduct(CartVo cartVo) throws Exception {
			
			//로직
			
			Connection conn = JDBCTemplate.getConnection();
			
			CartDao dao = new CartDao();
			int result = dao.addProduct(conn, cartVo);
			
			if(result == 1) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			
			JDBCTemplate.close(conn);
			
			return result;
		}



	
	
	
	
}
