package com.kh.jsp.thumbnail.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.jsp.thumbnail.model.dao.ThumbnailDAO;
import com.kh.jsp.thumbnail.model.vo.Thumbnail;
import static com.kh.jsp.common.JDBCTemplate.*;

public class ThumbnailService {

	private Connection con;
	private ThumbnailDAO tDAO = new ThumbnailDAO();
	
	public ArrayList<Thumbnail> selectList() {
		con = getConnection();
		
		ArrayList<Thumbnail> list = tDAO.selectList(con);
		
		close(con);
		
		return list;
	}
}
