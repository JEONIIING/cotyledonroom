package coty.member.service;

import java.sql.Connection;
import java.util.List;

import coty.member.dao.AddressListDao;
import coty.member.vo.AddressVo;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;
import coty.util.PageVo;

public class AddressService {

		//게시글 조회 (페이징처리)
		public List<AddressVo> selectList(PageVo pagevo, MemberVo loginMember) throws Exception {
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//sql (dao)
			AddressListDao dao = new AddressListDao();
			List<AddressVo> AddressList = dao.selectList(conn , pagevo, loginMember);
			
			//close
			JDBCTemplate.close(conn);
			
			return AddressList;
		}
		
		//게시글 전체 갯수 조회 (삭제되지않은)
		public int selectCount() throws Exception {
			
			//비지니스 로직
			
			//conn
			Connection conn = JDBCTemplate.getConnection();
			
			//dao
			AddressListDao dao = new AddressListDao();
			int result = dao.selectCount(conn);
			
			//tx close
			
			
			JDBCTemplate.close(conn);
			
			return result;
		}

}




