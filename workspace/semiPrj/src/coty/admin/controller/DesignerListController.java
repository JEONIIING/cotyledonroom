package coty.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.adminVo.DesignerVo;
import coty.designer.service.DesignerListService;
import coty.designer.service.DesignerService;

@WebServlet("/admin/designerList")
public class DesignerListController extends HttpServlet{
	 //디자이너 계정 목록 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내기
		
		//데이터 뭉치기
		
		//서비스 호출
		List<DesignerVo> designerList = null;
		try {
			DesignerListService dls = new DesignerListService();
			designerList = dls.selectDesignerList();
		} catch (Exception e) {
			System.out.println("[ERROR] 디자이너 목록 조회 중 예외 발생...");
			e.printStackTrace();
		}
		
		//화면
		System.out.println(designerList);
		
		req.setAttribute("designerList", designerList);
		req.getRequestDispatcher("/WEB-INF/views/admin/designerList.jsp").forward(req, resp);
		
	}
	
	
	
	 //디자이너 계정 등록 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DesignerService deservice = new DesignerService();
		int result = 0;
		try {
		//데이터 꺼내기
		String deId = req.getParameter("deId");
		String dePwd = req.getParameter("dePwd");
		String deName = req.getParameter("deName");
		String deTel = req.getParameter("deTel");
		String deEmail = req.getParameter("deEmail");
		String deShop = req.getParameter("shop");
		String deNick = req.getParameter("deNick");
	
 		// 데이터 뭉치기
 		DesignerVo deVo = new DesignerVo();
 		deVo.setId(deId);
 		deVo.setPwd(dePwd);
 		deVo.setName(deName);
 		deVo.setPhone(deTel);
 		deVo.setEmail(deEmail);
 		deVo.setShop(deShop);
 		deVo.setNick(deNick);
 		
 		// 서비스 실행
 		result = deservice.createDesigner(deVo);
 		
 		// 화면(view)
 		if(result == 1) {
 			req.getSession().setAttribute("alertMsg", "디자이너 계정 생성이 완료되었습니다!");
 			resp.sendRedirect("/admin/designerList");
 		}else {
 			
 		}
 		
 		
 		
 		} catch (Exception e) {
 			System.out.println("[ERROR] 디자이너 계정 생성 중 예외 발생...");
 			e.printStackTrace();
 		}
	
		
	}
}
