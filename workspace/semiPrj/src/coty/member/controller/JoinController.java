package coty.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.member.service.MemberService;
import coty.member.vo.MemberVo;
@WebServlet("/member/join")
public class JoinController extends HttpServlet{
	//화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
	}
	//회원가입 기능
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
			String memberId = req.getParameter("memberId");
			String memberPwd = req.getParameter("memberPwd");
			String membername = req.getParameter("membername");
			String memberIdnum = req.getParameter("memberIdnum");
			String memberPhone = req.getParameter("memberPhone");
			String memberEmail = req.getParameter("memberEmail");
			String memberAddress = req.getParameter("memberAddress");
			String memberNick = req.getParameter("memberNick");
			String gender = req.getParameter("gender");

			//데이터 뭉치기
			MemberVo vo = new MemberVo();
			vo.setId(memberId);
			vo.setPwd(memberPwd);
			vo.setName(membername);
			vo.setSsno(memberIdnum);
			vo.setPhone(memberPhone);
			vo.setEmail(memberEmail);
			vo.setAddress(memberAddress);
			vo.setNick(memberNick);
			vo.setGender_fm(gender);
			
			//서비스로직 호출
			int result = 0;
			try {
				MemberService service = new MemberService();
				result = service.join(vo);
			} catch (Exception e) {
				System.out.println("[ERROR] 회원가입 중 예외 발생..");
				e.printStackTrace();
			}
		
			//화면
			if(result == 1) {
				req.getSession().setAttribute("alertMsg", "회원가입 성공!");
				resp.sendRedirect("/");
			}else {
				req.setAttribute("errorMsg", "회원가입 실패..");
				req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
			}
		}
}
			
				
				
			



