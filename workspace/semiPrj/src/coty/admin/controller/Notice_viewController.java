package coty.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.admin.service.NoticeService;

@WebServlet("/admin/Notice_view")
public class Notice_viewController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String no = req.getParameter("no");
			//데이터 뭉치기
			
			//서비스 호출
			NoticeService bs = new NoticeService();
			Notice_a_Vo vo = bs.selectOne(no);
			
			//화면
			
			req.setAttribute("Notice_a_Vo", vo);
			req.getRequestDispatcher("/WEB-INF/views/admin/Notice_view.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("게시글 상세조회중 예외발생...");
			e.printStackTrace();
		}
		
	}
	
}
