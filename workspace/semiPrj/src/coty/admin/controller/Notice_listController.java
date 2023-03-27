package coty.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.admin.service.NoticeService;

@WebServlet("/admin/Notice_list")
public class Notice_listController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		
		List<Notice_a_Vo> noticeList = null;
		try {
			//서비스 호출
			NoticeService ns = new NoticeService();
			noticeList = ns.selectList();
			
		}catch (Exception e) {
			System.out.println("Error 게시글 조회중 예외발생..");
			e.printStackTrace();
		}
		
		
		//화면
		System.out.println(noticeList);
		req.setAttribute("noticeList", noticeList);
		req.getRequestDispatcher("/WEB-INF/views/admin/Notice_list.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
