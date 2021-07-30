package com.project.rural.market;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.rural.DBUtil;

public class MarketDAO {


	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;


	public MarketDAO() {
		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("MarketDAO.MarketDAO()");
			e.printStackTrace();
		}
	}



	//Market > add 서블릿
	public int add(MarketDTO dto) {

		try {

			String sql = "insert into tblMarket(seq, id, marketinfo, name, brandname, tel, address, site, detail, regdate, image)"
					+ "    values(seqMarket.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, default, ?)";

			pstat = conn.prepareStatement(sql);

			//pstat.setString(1, dto.getSeq());
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getMarketInfo());
			pstat.setString(3, dto.getName());
			pstat.setString(4, dto.getBrandName());
			pstat.setString(5, dto.getTel());
			pstat.setString(6, dto.getAddress());
			pstat.setString(7, dto.getSite());
			pstat.setString(8, dto.getDetail());
			pstat.setString(9, dto.getImage());


			return pstat.executeUpdate();


		} catch (Exception e) {
			e.printStackTrace();
		}


		return 0;
	}





	//Market > list서블릿
	public ArrayList<MarketDTO> list(HashMap<String, String> map) {

		try {

			//메소드에서 하는 일
			//1. 목록보기
			//2. 검색하기

			String where = "";

			if(map.get("isSearch").equals("y")) {

				//검색
				where = String.format(" where brandName like '%%%s%%' ",map.get("search"));

			}

			String sql = String.format("select * from tblMarket %s order by seq desc", where);

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<MarketDTO> list = new ArrayList<MarketDTO>(); //옮겨 담을 큰 상자

			while (rs.next()) {

				//레코드 1줄 -> BoardDTO 한개

				MarketDTO dto = new MarketDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setMaketInfo(rs.getString("marketInfo"));
				dto.setName(rs.getString("name"));
				dto.setBrandName(rs.getString("brandname"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setSite(rs.getString("site"));
				dto.setDetail(rs.getString("detail"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setImage(rs.getString("image"));
				//dto.setIsnew(rs.getString("isnew"));


				list.add(dto);

			}
			//System.out.println("list: " + list);
			return list;

		} catch (Exception e) {
			System.out.println("MarketDAO.list()");
			e.printStackTrace();
		}


		return null;
	}



	//Market > view 서블릿
	public MarketDTO get(String seq) {

		try {

			String sql = "select b.*, (select name from tblUser where id = b.id) as farmername from tblMarket b where seq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			rs = pstat.executeQuery();

			if (rs.next()) {

				MarketDTO dto = new MarketDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setMaketInfo(rs.getString("marketInfo"));
				dto.setName(rs.getString("name"));
				dto.setBrandName(rs.getString("brandname"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setSite(rs.getString("site"));
				dto.setDetail(rs.getString("detail"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setImage(rs.getString("image"));
				dto.setFarmername(rs.getString("farmername"));

				return dto;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}



		return null;
	}



	//Market > delOk 서블릿
	public int del(String seq) {


		try {

			String sql = "delete from tblMarket where seq = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("MarketDAO.del()");
			e.printStackTrace();
		}

		return 0;
	}



	//market > EditOk서블릿
	public int edit(MarketDTO dto) {

		try {

			String sql = "update tblMarket set marketinfo = ?, name = ?, brandname = ? , tel = ?, address = ? , site = ?, detail = ? , image  =? where seq = ?";


			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getMarketInfo());
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getBrandName());
			pstat.setString(4, dto.getTel());
			pstat.setString(5, dto.getAddress());
			pstat.setString(6, dto.getSite());
			pstat.setString(7, dto.getDetail());
			pstat.setString(8, dto.getImage());
			pstat.setString(9, dto.getSeq());

			return pstat.executeUpdate();


		} catch (Exception e) {
			System.out.println("MarketDAO.edit()");
			e.printStackTrace();
		}


		return 0;
	}


	//market > addlist서블릿
	public ArrayList<MarketDTO> addlist(String id) {

		try {

			String sql = String.format("select * from tblMarket where id='%s' order by seq desc", id);

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<MarketDTO> addlist = new ArrayList<MarketDTO>(); //옮겨 담을 큰 상자

			while (rs.next()) {

				//레코드 1줄 -> BoardDTO 한개

				MarketDTO dto = new MarketDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setMaketInfo(rs.getString("marketInfo"));
				dto.setName(rs.getString("name"));
				dto.setBrandName(rs.getString("brandname"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setSite(rs.getString("site"));
				dto.setDetail(rs.getString("detail"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setImage(rs.getString("image"));

				//리스트에 옮겨담기
				addlist.add(dto);


			}
			return addlist;


		} catch (Exception e) {
			System.out.println("BoardDAO.addlist()");
			e.printStackTrace();
		}

		return null;
	}


	//Market > AddQna 서블릿
	public int addQna(MarketQADTO dto) {

		try {

			String sql = "insert into tblMarketQA(seq, pseq, id, title, detailq, regdateq, detaila, regdatea, isa)"
					+ "    values(seqMarketQA.nextVal, ?, ?, ?, ?, default, ?, default, default)";

			pstat = conn.prepareStatement(sql);

			//pstat.setString(1, dto.getSeq());
			pstat.setString(1, dto.getPseq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getTitle());
			pstat.setString(4, dto.getDetailq());
			pstat.setString(5, dto.getDetaila());

			return pstat.executeUpdate();


		} catch (Exception e) {
			System.out.println("MarketDAO.addQna()");
			e.printStackTrace();

		}


		return 0;

	}



	//market >view 서블릿
	public ArrayList<MarketQADTO> listQna(String seq) {

		try {


			String sql = "select c.*, (select name from tblUser where id = c.id ) as name from tblMarketQA c where pseq = ? order by seq desc";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			rs = pstat.executeQuery();

			ArrayList<MarketQADTO> qlist = new ArrayList<MarketQADTO>();

			while(rs.next()) {
				MarketQADTO dto = new MarketQADTO();
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setDetailq(rs.getString("detailq"));
				dto.setRegdateq(rs.getString("regdateq"));
				dto.setDetaila(rs.getString("detaila"));
				dto.setRegdatea(rs.getString("regdatea"));
				dto.setIsa(rs.getString("isa"));
				dto.setName(rs.getString("name"));

				qlist.add(dto);

			}
			return qlist;


		} catch (Exception e) {
			System.out.println("MarketDAO.listQna()");
			e.printStackTrace();


		}
		return null;
	}


	//market > addReqna서블릿
	public int addReqna(MarketQADTO dto) {

		try {

			String sql = "update tblMarketQA set detaila = ?, regdatea = sysdate, isa ='y' where seq = ?";


			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getDetaila());
			pstat.setString(2, dto.getSeq());

			System.out.println(sql);
			System.out.println(dto.getDetaila() + dto.getSeq());
			return pstat.executeUpdate();


		} catch (Exception e) {
			System.out.println("MarketDAO.addReqna()");
			e.printStackTrace();
		}


		return 0;
	}







}
