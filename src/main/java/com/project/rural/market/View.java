package com.project.rural.market;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할일
		// 1. 데이터 가져오기(seq)
		// 2. DB 작업 > DAO 위임 > select where seq
		// 3. BoardDTO 반환 > JSP 호출하기 + 전달하기

		//1.
		HttpSession session = req.getSession();
		String seq = req.getParameter("seq");

		//2.
		MarketDAO dao = new MarketDAO();
		MarketDTO dto = dao.get(seq);

		//3.
		req.setAttribute("dto", dto);



		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/view.jsp");
		dispatcher.forward(req, resp);

	}

}