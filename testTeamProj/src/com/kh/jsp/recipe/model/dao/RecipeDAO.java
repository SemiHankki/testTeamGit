package com.kh.jsp.recipe.model.dao;

import static com.kh.jsp.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.jsp.recipe.model.vo.Recipe;
import com.kh.jsp.attachment.model.vo.Attachment;

public class RecipeDAO {
	
	private Properties prop = null;
	
	public RecipeDAO() {
		prop = new Properties();
		
		String filePath = RecipeDAO.class
				          .getResource("/config/recipe-sql.properties")
				          .getPath();
		
		try {
			prop.load( new FileReader(filePath));
		} catch (FileNotFoundException e) {			
			e.printStackTrace();
		} catch (IOException e) {		
			e.printStackTrace();
		}
		
	}
	

	public ArrayList<Recipe> selectList(Connection con) {
		ArrayList<Recipe> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
            while(rset.next()) {
				
				Recipe rb = new Recipe();
				
				rb.setRb_no(rset.getInt("rb_no"));
				rb.setRb_writer(rset.getString("rb_writer"));
				rb.setRb_title(rset.getString("rb_content"));
				rb.setRb_content(rset.getString("rb_content"));
				rb.setRb_date(rset.getDate("rb_date"));
				rb.setRb_recommend_count(rset.getInt("rb_recommend_count"));
				rb.setRb_value(rset.getInt("rb_value"));
				rb.setRb_count(rset.getInt("rb_count"));
				rb.setRb_attachment(rset.getString("rb_attachment"));				
				
				list.add(rb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;		
	}
	
	public Recipe selectRecipe(Connection con, int rb_no) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Recipe r = null;
		
		String str = prop.getProperty("selectRecipe");
		
		try {
			pstmt=con.prepareStatement(str);
			
			pstmt.setInt(1, rb_no);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				r = new Recipe();
				
				r.setRb_no(rset.getInt(1));
				r.setRb_writer(rset.getString(2));
				r.setRb_title(rset.getString(3));
				r.setRb_content(rset.getString(4));
				r.setRb_date(rset.getDate(5));
				r.setRb_recommend_count(rset.getInt(6));
				r.setRb_value(rset.getInt(7));
				r.setRb_count(rset.getInt(8));
				r.setRb_attachment(rset.getString(9));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}	
		return null;
	}

	public int insertRecipe(Connection con, Recipe r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertRecipe");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, r.getRb_no());
			pstmt.setString(2, r.getRb_writer());
			pstmt.setString(3, r.getRb_title());
			pstmt.setString(4, r.getRb_content());
			pstmt.setString(5, r.getRb_attachment());

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertAttachment(Connection con, com.kh.jsp.attachment.model.vo.Attachment attachment, Recipe r) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, attachment.getF_no());
			pstmt.setInt(2, attachment.getF_type());
			pstmt.setInt(3, attachment.getF_connect_no());
			pstmt.setInt(4, attachment.getF_level());
			pstmt.setString(5, attachment.getF_name());
			pstmt.setString(6, attachment.getF_change_name());
			pstmt.setDate(7, attachment.getF_upload_date());
			pstmt.setString(8, attachment.getF_status());
			pstmt.setString(9, attachment.getF_filepath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	
	
	
}
