package com.project.rural.market;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/delok.do")
public class DelOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1. 데이터 가져오기(seq)
		// 2. DB작업 > DAO 위임 > delete where seq
		// 3. 결과처리

		//1.
		String seq = req.getParameter("seq");

		//2.
		MarketDAO dao = new MarketDAO();

		HttpSession session = req.getSession();

		int result = dao.del(seq);

		System.out.println("값:" + result);




		if(result == 1) {
			 resp.sendRedirect("/rural/market/list.do");
		}else {
			 resp.sendRedirect("/rural/market/view.do?seq=" + seq);
		}



	}

}