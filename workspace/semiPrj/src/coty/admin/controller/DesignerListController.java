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
import coty.util.PageVo;

@WebServlet("/admin/designerList")
public class DesignerListController extends HttpServlet{
	 //디자이너 계정 목록 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DesignerListService dls = new DesignerListService();
		
		try {
		//데이터 꺼내기 (페이징 처리를 위한 데이터 준비)
		int currentPage = Integer.parseInt(req.getParameter("page"));
		int listCount = dls.selectCount();//전체글 갯수 구하기
		int pageLimit = 5; //한페이지에 몇페이징씩 할건지
		int boardLimit = 5; //한페이지에 몇개의 글 보여줄건지 
		
		//데이터 뭉치기
		PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
				
		//서비스 호출
		 List<DesignerVo> designerList = dls.selectDesignerList(pageVo); //페이징관련정보
		
		//화면
		System.out.println(designerList);
		
		req.setAttribute("designerList", designerList);
		req.setAttribute("PageVo", pageVo);
		req.getRequestDispatcher("/WEB-INF/views/admin/designerList.jsp").forward(req, resp);
		} catch (Exception e) {
			System.out.println("[ERROR] 디자이너 목록 조회 중 예외 발생...");
			e.printStackTrace();
		}
		
		
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
