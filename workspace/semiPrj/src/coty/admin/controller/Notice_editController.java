package coty.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.admin.noticeVo.Notice_a_Vo;
import coty.admin.service.NoticeService;
import coty.util.PageVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50,
		maxRequestSize = 1024 * 1024* 50 * 10
	)

@WebServlet("/admin/Notice_edit")
public class Notice_editController extends HttpServlet {
	
	//수정하기 화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String no = req.getParameter("no");		
		//서비스 호출
		//디비가서 select 한 후 vo 얻기
		
		int result = 0;
		try {
			NoticeService ns = new NoticeService();
			//result = ns.update(writer, Title, Content);	//xxx
			Notice_a_Vo vo = ns.selectOne(no);
			
			req.setAttribute("Notice_a_Vo", vo);
			req.getRequestDispatcher("/WEB-INF/views/admin/Notice_edit.jsp").forward(req, resp);
			System.out.println(vo);
		} catch (Exception e) {
			System.out.println("에러 ㅠㅠ");
			e.printStackTrace();
		}
		
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 수정 성공");
			//resp.sendRedirect("/admin/Notice_list?page=1");

		}else{
			req.getSession().setAttribute("alertMsg", "게시글 수정 실패..");
			//resp.sendRedirect("/");
		}
	}
	
	
	//수정하기 처리하는 메소드
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기 //제목,내용,번호
		String Title = req.getParameter("Title");
		String writer = req.getParameter("writer");
		String Content = req.getParameter("Content");
		
		//데이터 뭉치기
		Notice_a_Vo vo = new Notice_a_Vo();
		vo.setTitle(Title);
		vo.setNo(writer);
		vo.setContent(Content);
		
		//서비스 로직	//클라한테 전달받은 데이터들을 가지고 업데이트 쿼리 실행
		int result = 0;
		try {
			NoticeService ns = new NoticeService();	
			//result = ns.update(writer, Title, Content);	//xxx
			int vo = ns.update(writer, Title, Content);
			
			req.setAttribute("Notice_a_Vo", vo);
			req.getRequestDispatcher("/WEB-INF/views/admin/Notice_edit.jsp").forward(req, resp);
			System.out.println(vo);
		} catch (Exception e) {
			System.out.println("에러 ㅠㅠ");
			e.printStackTrace();
		}
		
		
				
				//서비스레이어.업데이트쿼리실행하느넴소드(뭉친데이터);
		
		//화면
//		if() {
//			
//		}else{
//			
//		}
		
		
	}
	

}//class
