package coty.admin.contoller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.adminVo.AdminVo;
import coty.admin.service.AdminLoginService;

@WebServlet("/admin/login")
public class AdminLoginController extends HttpServlet {
	//관리자 로그인 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/login_A.jsp").forward(req, resp);
	}
	
	//관리자 로그인
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String memberId = req.getParameter("memberId");
			String memberPwd = req.getParameter("memberPwd");
			
			//데이터 뭉치기
			AdminVo adminVo = new AdminVo();
			adminVo.setId(memberId);
			adminVo.setPwd(memberPwd);
			
			//서비스 실행
			AdminLoginService service = new AdminLoginService();
			AdminVo adminLogimVo = service.adminLogin(adminVo);
			
			//화면 보여주기
			if(adminLogimVo != null) {
				req.setAttribute("alertMsg", "관리자님 환영합니다!");
				req.getSession().setAttribute("adminLoginVo", adminLogimVo);
				resp.sendRedirect("/WEB-INF/views/admin/Notice_list.jsp");
			}else {
				req.setAttribute("loginfailMsg", "로그인을 실패하였습니다.");
				resp.sendRedirect("/WEB-IFN/views/member/login_A.jsp");
			}
		}catch(Exception e) {
			System.out.println("[ERROR] 관리자 로그인 중 예외 발생!");
			e.printStackTrace();
		}
	
	
	}
}
