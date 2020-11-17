package com.kh.jsp.recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.jsp.attachment.model.vo.Attachment;
import com.kh.jsp.product.model.vo.Product;
import com.kh.jsp.recipe.model.dao.RecipeDAO;
import com.kh.jsp.recipe.model.vo.Recipe;
import static com.kh.jsp.common.JDBCTemplate.*;

public class RecipeService {
	
	private Connection con;
	private RecipeDAO rDAO = new RecipeDAO();
	
	public ArrayList<Recipe> selectList() {
		con = getConnection();
		
		ArrayList<Recipe> list = rDAO.selectList(con);
		
		close(con);
		
		return list;
	} 
	
	public Recipe selectRecipe(int rb_no) {
		
		Recipe r = null;
		
		con=getConnection();
		
		RecipeDAO rd = new RecipeDAO();
		
		r = rd.selectRecipe(con, rb_no);
		
		close(con);
		
		return r;
	}
	 public int insertRecipe(Recipe r, ArrayList<Attachment> list) {
		con = getConnection();
		int result = 0;
		// 1. 사진 게시글 저장
		int result1 = rDAO.insertRecipe(con, r);
		
		// 2. 첨부파일 여러개 저장
		int result2 = 0;
		for(int i = 0; i < list.size(); i++) {
			// 첫번째 이미지는 대표 이미지 (flevel = 0)
			// 나머지는 서브이미지 (flevel = 1)
			list.get(i).setF_level(i == 0 ? 0 : 1);
			
			result2 = rDAO.insertAttachment(con, list.get(i), r);
			
			if( result2 == 0 ) break;	// 잘못 실행된 행이 있다면 반복(insert) 취소!
		}
		
		if( result1 > 0 && result2 > 0 ) {
			commit(con);
			result = 1;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
}


	

	
	
