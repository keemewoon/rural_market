package com.project.rural.market;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/market/addreqna.do")
public class AddrReqna extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//할일
		//1. 데이터 가져오기(detaila, pseq, isa)
		//2. DB작업 > DAO 위임 > update
		//3. 돌아가기 > view.do?seq=10

		//1.
		String seq = req.getParameter("seq");
		String detaila = req.getParameter("detaila");
		String isa = req.getParameter("isa");

		//2.
		MarketDAO dao = new MarketDAO();
		MarketQADTO dto = new MarketQADTO();

		//3. 아이디 가져오기
		HttpSession session = req.getSession();

		dto.setId(session.getAttribute("id").toString());//댓글 작성자

		dto.setSeq(seq);
		dto.setDetaila(detaila);
		dto.setIsa(isa);

		int result = dao.addReqna(dto); //1,0


		if(result == 1) {
			resp.sendRedirect("/rural/market/view.do?seq=" + seq); //보고있던 글 번호를 가지고 돌아가기
		}else {
			resp.setCharacterEncoding("UTF-8");

			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('error');");
			writer.print("history.back()");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");

			writer.close();
		}


	}

}