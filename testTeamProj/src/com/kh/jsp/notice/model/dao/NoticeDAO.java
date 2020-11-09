package com.kh.jsp.notice.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.jsp.common.JDBCTemplate.*;

import com.kh.jsp.common.exception.NoticeException;
import com.kh.jsp.notice.model.vo.Notice;

public class NoticeDAO {
	
	private Properties prop;
	
	public NoticeDAO() {
		
		prop = new Properties();
		
		String filePath = NoticeDAO.class
				                   .getResource("/config/notice-sql.properties")
				                   .getPath();
		
		try {
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			
		} catch (IOException e) {			
			e.printStackTrace();
		}
	}
	
	public ArrayList<Notice> selectList(Connection con) throws NoticeException {
		
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Notice n = new Notice();
				
				n.setN_no( rset.getInt(1)  );
				n.setN_writer( rset.getString(2)  );
				n.setN_title( rset.getString(3)  );
				n.setN_content( rset.getString(4)  );
				n.setN_date( rset.getDate(5)  );
				n.setN_count( rset.getInt(6)  );
				n.setN_attachment(rset.getString(7));
				
				
				list.add(n);				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new NoticeException("[DAO] : " + e.getMessage());
			
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
		
	}

}
