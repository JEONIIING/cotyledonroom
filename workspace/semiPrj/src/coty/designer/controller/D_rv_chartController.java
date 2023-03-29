package coty.designer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.adminVo.DesignerVo;
import coty.designer.service.DesignerService;
import coty.member.service.CartService;
import coty.member.vo.CartVo;
import coty.member.vo.MemberVo;
import coty.util.PageVo;

@WebServlet("/designer/rv_chart")
public class D_rv_chartController extends HttpServlet{

	private DesignerService ds = new DesignerService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// 데이터 꺼내기
			String pageParam = req.getParameter("page");
			int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
//			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = ds.selectCount();
			int pageLimit = 5;
			int boardLimit = 5;

			//데이터 가져오기
			MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
			System.out.println(loginMember);
			// 데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);

			// 서비스 호출
			List<DrvVo> cartList = ds.selectList(pageVo,loginMember);

			System.out.println(ds.selectList(pageVo, loginMember));
			System.out.println(cartList);
			// 화면
			req.setAttribute("cartList", cartList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/designer/d_rv_chart.jsp").forward(req, resp);

		} catch (Exception e) {
			System.out.println("[ERROR] 디자이너 예약목록 조회중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}

	}
	
	//디자이너 로그인
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DesignerService ds = new DesignerService();

		try {
		//데이터 꺼내기
		String deId = req.getParameter("deId");
		String dePwd = req.getParameter("dePwd");
		
		//데이터 뭉치기
		DesignerVo deVo = new DesignerVo();
		deVo.setId(deId);
		deVo.setPwd(dePwd);
		
		//서비스 실행
		DesignerVo deLoginVo = ds.designerLogin(deVo);
			
		//화면 보여주기 
		if(deLoginVo != null) {
			//성공
			req.getSession().setAttribute("deLoginVo", deLoginVo);
			resp.sendRedirect("/designer/rv_chart");
		}else {
			//실패
			req.getSession().setAttribute("alertMsg", "아이디와 비밀번호가 일치하지 않습니다. 다시 시도해 주십시오.");
			resp.sendRedirect("/designer/login");
		}	
			
			
			
		} catch (Exception e) {
			System.out.println("[ERROR] 디자이너 로그인 중 예외 발생...");
			e.printStackTrace();
		}
		
	}
}

