package com.project.rural.market;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/market/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		//할일
		//1. DB작업 > DAO위임 > select
		//2. ArrayList<BoardDTO> 반환
		//3. JSP 호출하기 + 2번전달

		MarketDAO dao = new MarketDAO();

		ArrayList<MarketDTO> list = dao.list();

		req.setAttribute("list", list);





		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/market/list.jsp");
		dispatcher.forward(req, resp);

	}

}