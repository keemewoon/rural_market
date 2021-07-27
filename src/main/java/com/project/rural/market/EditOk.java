package com.project.rural.market;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/market/editok.do")
public class EditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할일
		// 1. 데이터 가져오기
		// 2. DB 작업 > DAO 위임 > update
		// 3. 결과 처리

		// 1.
		String seq = req.getParameter("seq");
		String marketInfo = req.getParameter("marketInfo");
		String name = req.getParameter("name");
		String brandName = req.getParameter("brandName");
		String tel = req.getParameter("tel");
		String address = req.getParameter("address");
		String detail = req.getParameter("detail");
		String image = req.getParameter("image");
		String site = req.getParameter("site");

		// 2.
		MarketDAO dao = new MarketDAO();
		MarketDTO dto = new MarketDTO();

		HttpSession session = req.getSession();

		dto.setSeq(seq);
		dto.setMaketInfo(marketInfo);
		dto.setName(name);
		dto.setBrandName(brandName);
		dto.setTel(tel);
		dto.setAddress(address);
		dto.setDetail(detail);
		dto.setImage(image);
		dto.setSite(site);

		int result = dao.edit(dto);

		// 3.
		if (result == 1) {
			resp.sendRedirect("/rural/market/view.do?seq=" + seq);
		} else {
			resp.sendRedirect("/rural/market/edit.do?seq=" + seq);
		}



	}

}
