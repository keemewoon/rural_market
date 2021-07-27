package com.project.rural.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");		
		String pw = req.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		
		MemberDTO result = dao.login(dto);
		
		if (result != null) {
			HttpSession session = req.getSession();
			
			session.setAttribute("id", result.getId()); 
			session.setAttribute("name", result.getName()); 
			session.setAttribute("birth", result.getBirth());
			session.setAttribute("gender", result.getGender());
			session.setAttribute("tel", result.getTel());
			session.setAttribute("email", result.getEmail());
			session.setAttribute("address", result.getAddress());
			session.setAttribute("lv", result.getLv());
			session.setAttribute("regDate", result.getRegDate());
			session.setAttribute("isOut", result.getIsOut());
			session.setAttribute("isStop", result.getIsStop());
			
			resp.sendRedirect("/rural/index.do");
		} else {
			resp.sendRedirect("/rural/member/login.do");
		}
		
	}

}
