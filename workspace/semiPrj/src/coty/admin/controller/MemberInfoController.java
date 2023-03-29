package coty.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.service.MemberManagementService;
import coty.member.vo.MemberVo;

@WebServlet("/admin/memberInfo")
public class MemberInfoController extends HttpServlet{
	//고객 계정정보 상세 조회 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내기
		String no = req.getParameter("no");
		System.out.println(no);

		//데이터 뭉치기
		
		//서비스 호출
		MemberManagementService mms = new MemberManagementService();
		MemberVo memberVo = null;
		try {
			memberVo = mms.selectMemberInfo(no);
		} catch (Exception e) {
			System.out.println("[ERROR] 고객 상세정보 조회 중 예외발생");
			e.printStackTrace();
		}
		
		//화면
		if(memberVo != null) {
			req.getSession().setAttribute("memberVo", memberVo);
			req.getRequestDispatcher("/WEB-INF/views/admin/admin_member_info.jsp").forward(req, resp);
		}
	}
	
	
	//고객 계정정보 수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내오기
		String com = req.getParameter("com");
		
		//서비스 실행
		MemberManagementService mms = new MemberManagementService();
		
		
		//화면
		
		
	
	}
	
	
}
