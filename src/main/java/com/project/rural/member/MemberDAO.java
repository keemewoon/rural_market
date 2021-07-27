package com.project.rural.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.rural.DBUtil;

public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		
		try {
			
			conn = DBUtil.open();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.MemberDAO()");
			e.printStackTrace();
		}
		
	}

	public MemberDTO login(MemberDTO dto) {
		
		try {
			
			String sql = "select * from tblUser where id=? and pw=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				MemberDTO result = new MemberDTO();
				
				result.setId(rs.getString("id"));
				result.setName(rs.getString("name"));
				result.setBirth(rs.getString("birth"));
				result.setGender(rs.getString("gender"));
				result.setTel(rs.getString("tel"));
				result.setEmail(rs.getString("email"));
				result.setAddress(rs.getString("address"));
				result.setLv(rs.getString("lv"));
				result.setRegDate(rs.getString("regDate"));
				result.setIsOut(rs.getString("isOut"));
				result.setIsStop(rs.getString("isStop"));
				
				return result;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.login()");
			e.printStackTrace();
		}
		
		return null;
	}
	
}
