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
		String id = (String)session.getAttribute("id");

		//2.
		MarketDAO dao = new MarketDAO();
		MarketDTO dto = dao.get(seq);


		//dto.setId(id);

		ArrayList<MarketDTO> addlist = dao.addlist(id);

		//add list전달
		req.setAttribute("addlist", addlist);



		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/addlist.jsp");
		dispatcher.forward(req, resp);

	}

}