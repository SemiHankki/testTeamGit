package com.kh.jsp.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.jsp.common.exception.NoticeException;
import com.kh.jsp.notice.model.dao.NoticeDAO;
import com.kh.jsp.notice.model.vo.Notice;

import static com.kh.jsp.common.JDBCTemplate.*;

public class NoticeService {
	
	private Connection con;
	private NoticeDAO nDAO = new NoticeDAO();
	
	public ArrayList<Notice> selectList() throws NoticeException {
		
		con = getConnection();
		
		ArrayList<Notice> list = nDAO.selectList(con);
		
		close(con);
		
		return list;
		
	}

}
