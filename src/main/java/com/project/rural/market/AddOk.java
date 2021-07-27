package com.project.rural.market;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할일
		// 1. 인코딩
		// 2. 데이터 가져오기(제목, 내용, 태그)
		// 3. DB작엄 > DAO위임 > insert
		// 4. 결과 > 후처리

		// 2.
		String marketInfo = req.getParameter("marketInfo");
		String name = req.getParameter("name");
		String brandName = req.getParameter("brandName");
		String tel = req.getParameter("tel");
		String address = req.getParameter("address");
		String detail = req.getParameter("detail");
		String image = req.getParameter("image");

		// 3.
		MarketDAO dao = new MarketDAO();
		MarketDTO dto = new MarketDTO();

		HttpSession session = req.getSession();

		dto.setId(session.getAttribute("id").toString());
		dto.setMaketInfo(marketInfo);
		dto.setName(name);
		dto.setBrandName(brandName);
		dto.setTel(tel);
		dto.setAddress(address);
		dto.setDetail(detail);
		dto.setImage(image);

		int result = dao.add(dto);

		// 4.성공 or 실패
		if (result == 1) {
			resp.sendRedirect("/rural/market/list.do");
		} else {
			resp.sendRedirect("/rural/market/add.do");
		}

	}

}