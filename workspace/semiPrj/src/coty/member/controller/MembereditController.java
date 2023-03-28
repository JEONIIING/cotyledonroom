package coty.member.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.naming.SelectorContext;

import coty.member.dao.MemberDao;
import coty.member.service.MemberService;
import coty.member.vo.MemberVo;
import coty.util.JDBCTemplate;
@WebServlet("/member/memberedit")
public class MembereditController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		req.setAttribute("loginMember", loginMember); 
		req.getRequestDispatcher("/WEB-INF/views/member/memberedit.jsp").forward(req, resp);
		
//		session.invalidate();
		}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내오기
		HttpSession session = req.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");		
		System.out.println(loginMember);
		
		//수정할 회원정보 꺼내오기
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String memberPhone = req.getParameter("memberPhone");
		String memberEmail = req.getParameter("memberEmail");
		String memberNick = req.getParameter("memberNick");
		String address = req.getParameter("address");
		
		//화면
		MemberVo result = null;
		try {
			//비지니스 로직
			MemberService service = new MemberService();
			
			result = service.editMember(loginMember);
			
		} catch (Exception e) {
			System.out.println("[ERORR] 회원정보 수정 중 예외발생..");
			e.printStackTrace();
		}finally {
			
		}
				
		//화면
		if(result != null) {
			//성공화면
			session.invalidate(); //탈퇴하면 세션이 만료되게
			req.getSession().setAttribute("alertEditMsg", "회원정보수정 성공"); // 부신거에 다시 넣을수없으니까 새롭게 req.getsession으로 가져와서 사용해야됨
			resp.sendRedirect("/member/memberedit");
		}else {
			req.setAttribute("errorMsg", "회원정보수정 실패 ..");
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
			
		}
	}
		
		
}

