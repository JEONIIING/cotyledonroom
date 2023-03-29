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
	//디자이너 계정 목록 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내기
		String no = req.getParameter("no");

		//데이터 뭉치기
		
		//서비스 호출
		MemberManagementService mms = new MemberManagementService();
		MemberVo memberVo = mms.selectMemberInfo(no);
		
		//화면
		
		
		
		req.getRequestDispatcher("/WEB-INF/views/admin/admin_member_info.jsp").forward(req, resp);
	}
}
