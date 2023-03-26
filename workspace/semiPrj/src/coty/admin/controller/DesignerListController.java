package coty.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.adminVo.DesignerVo;

@WebServlet("/admin/designerList")
public class DesignerListController extends HttpServlet{
	//디자이너 계정 목록 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/admin/designerList.jsp").forward(req, resp);
	}
	
	//디자이너 계정 등록 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내기
		String deId = req.getParameter("deId");
		String dePwd = req.getParameter("dePwd");
		String deName = req.getParameter("deName");
		String deTel = req.getParameter("deTel");
		String deEmail = req.getParameter("deEmail");
		
		//데이터 뭉치기
		DesignerVo deVo = new DesignerVo();
		deVo.setId(deId);
		deVo.setPwd(dePwd);
		deVo.setName(deName);
		deVo.setPhone(deTel);
		deVo.setEmail(deEmail);
		
		//서비스 실행
		
		
		//화면(view)
		
		
		req.getRequestDispatcher("/WEB-INF/views/admin/designerList.jsp").forward(req, resp);
	
	
	}
}
