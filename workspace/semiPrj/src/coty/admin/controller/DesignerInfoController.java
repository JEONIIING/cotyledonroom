package coty.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import coty.admin.adminVo.DesignerVo;
import coty.designer.service.DesignerListService;
import coty.designer.service.DesignerService;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 50 ,		//파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10	//리퀘스트 총 크기
	)
@WebServlet("/admin/designerInfo")
public class DesignerInfoController extends HttpServlet{
	//디자이너 계정 정보 상세화면
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String no = req.getParameter("no");
			
			//데이터 뭉치기
			
			//서비스 실행
			DesignerListService dls = new DesignerListService();
			DesignerVo designerVo = dls.selectInfo(no);
			
			System.out.println(designerVo);
			
			//화면
			req.getSession().setAttribute("designerVo", designerVo); //세션에 디자이너Vo 저장
			req.getRequestDispatcher("/WEB-INF/views/admin/designerInfo.jsp").forward(req, resp);
		
		}catch(Exception e) {
			System.out.println("[ERROR] 디자이너 정보 상세조회 중 예외 발생..");
			e.printStackTrace();
		}
		
		
	}
	
	//디자이너 계정 수정
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 꺼내기
		String id = req.getParameter("desId");
		String phone = req.getParameter("tel");
		String email = req.getParameter("email");
		String ex = req.getParameter("detail");
		
		//파일객체 얻기
		Part f = req.getPart("f"); //f안에 파일들이 들어있음.
//				System.out.println(f.getSubmittedFileName()); //전송한 파일의 이름을 가져옴 zzz.png
		
		//파일서버에 저장
		InputStream fis = f.getInputStream(); //읽는 통로 만들기
		
		String path = req.getServletContext().getRealPath("/resources/image/"); 
		String originfileName = f.getSubmittedFileName(); //zzz.png
		String ext = originfileName.substring(originfileName.lastIndexOf("."));
		
		String fileName = UUID.randomUUID().toString();
		File target = new File(path + fileName + ext); //목표로 하는 파일객체 만들기
		FileOutputStream fos = new FileOutputStream(target); //목표로하는 파일객체 내보내는 통로에 저장!
		
		
		//Read, Write
		byte[] buf = new byte[1024]; //바구니
		int size=0;
		while((size = fis.read(buf)) != -1) {  
			fos.write(buf , 0 , size); //0부터 size까지 읽은 데이터 내보내기
		}
		
		//자원반납
		fis.close();
		fos.close();
	
		
		try {
		
		//데이터뭉치기 
		DesignerVo designerVo = new DesignerVo();
		designerVo.setId(id);
		designerVo.setPhone(phone);
		designerVo.setEmail(email);
//				designerVo.setSrc(src);
		
		//서비스 실행
		DesignerService ds = new DesignerService();
		int result = 0;
		result = ds.deInfoEdit(designerVo);

		
		//화면
		if(result == 1) {
			req.setAttribute("designerVo",designerVo);
			req.getRequestDispatcher("/admin/designerInfo").forward(req, resp);
		}else {
			req.getSession().setAttribute("alertMsg", "디자이너 계정 정보수정을 다시 시도해 주십시오.");
			resp.sendRedirect("/admin/designerInfo");
		}
		
		} catch (Exception e) {
			System.out.println("[ERROR] 디자이너 계정 정보수정 중 예외 발생...");
			e.printStackTrace();
		}
		
	}
}
