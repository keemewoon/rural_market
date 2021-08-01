package com.project.rural.market;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/likelist.do")
public class LikeList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String seq = req.getParameter("seq");
		String id = (String)session.getAttribute("id");

		MarketDAO dao = new MarketDAO();
		LikeDTO dto = new LikeDTO();


		dto.setId(session.getAttribute("id").toString()); //좋아요 누른 사용자
		dto.setSeq(seq); //좋아요 누른 글번호


		ArrayList<LikeDTO> likelist =  dao.likelist(id);




	}

}