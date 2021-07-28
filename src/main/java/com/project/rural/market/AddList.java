package com.project.rural.market;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/addlist.do")
public class AddList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. seq가져오기
		HttpSession session = req.getSession();
		String seq = req.getParameter("seq");

		//2.
		MarketDAO dao = new MarketDAO();
		MarketDTO dto = dao.get(seq);

		ArrayList<MarketDTO> list = dao.list();
		req.setAttribute("list", list);

		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/addlist.jsp");
		dispatcher.forward(req, resp);

	}

}