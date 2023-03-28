package coty.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coty.market.vo.ProductVo;
import coty.member.service.CartService;
import coty.member.vo.CartVo;
import coty.member.vo.MemberVo;
import coty.util.PageVo;

@WebServlet("/member/cart")
public class CartController extends HttpServlet {

	private CartService cs = new CartService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// 데이터 꺼내기
			String pageParam = req.getParameter("page");
			int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
//			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = cs.selectCount();
			int pageLimit = 5;
			int boardLimit = 5;

			//데이터 가져오기
			MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
			
			// 데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);

			// 서비스 호출
			List<CartVo> cartList = cs.selectList(pageVo,loginMember);

			System.out.println(cs.selectList(pageVo, loginMember));
			System.out.println(cartList);
			// 화면
			req.setAttribute("cartList", cartList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/member/Cart.jsp").forward(req, resp);
//			resp.sendRedirect("/WEB-INF/views/member/Cart.jsp");

		} catch (Exception e) {
			System.out.println("[ERROR] 장바구니 조회중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}

	}

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 데이터 꺼내기
		String amount = req.getParameter("pCnt");
		String no = req.getParameter("pNo");
		// 로그인 데이터 가져오기
		MemberVo loginMember = (MemberVo) req.getSession().getAttribute("loginMember");
		// 데이터 뭉치기
		CartVo cartVo = new CartVo();
		cartVo.setcNo(loginMember.getNo());
		cartVo.setpNo(no);
		cartVo.setAmount(amount);

		int result = 0;
		try {
			//서비스 호출
			CartService cs = new CartService();
			result = cs.addProduct(cartVo);
			
		}catch (Exception e) {
			System.out.println("[ERROR] 장바구니 상품 추가 중 예외 발생");
			e.printStackTrace();
		}
		//화면
		if(result == 1) {
			req.getSession().setAttribute("cartMsg", "장바구니 추가 성공");
			resp.sendRedirect("/market/productlist");
		}else {
			req.getSession().setAttribute("cartMsg", "장바구니 추가 실패");
			resp.sendRedirect("/market/productlist");
		
		}
  }
}