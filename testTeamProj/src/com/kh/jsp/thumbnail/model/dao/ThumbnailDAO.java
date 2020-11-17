package com.kh.jsp.thumbnail.model.dao;

import static com.kh.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.jsp.thumbnail.model.vo.Thumbnail;

public class ThumbnailDAO {

	private Properties prop = null;
	
	public ThumbnailDAO() {
		prop = new Properties();
		
		String filePath = ThumbnailDAO.class 
				          .getResource("/config/thumbnail-sql.properties")
				          .getPath();
		
		try {
			prop.load( new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Thumbnail> selectList(Connection con) {
		
		ArrayList<Thumbnail> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Thumbnail tn = new Thumbnail();
				
				tn.setRb_no(rset.getInt("rb_no"));
				tn.setRb_writer(rset.getString("rb_writer"));
				tn.setRb_title(rset.getString("rb_title"));
				tn.setRb_content(rset.getString("rb_content"));
				tn.setRb_date(rset.getDate("rb_date"));
				tn.setRb_recommend_count(rset.getInt("rb_recommend_count"));
				tn.setRb_value(rset.getInt("rb_value"));
				tn.setRb_count(rset.getInt("rb_count"));				
				tn.setRb_attachment(rset.getString("rb_attatchment"));
				
				list.add(tn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		

	}
}
