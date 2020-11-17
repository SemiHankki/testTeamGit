package com.kh.jsp.product.model.dao;

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

import com.kh.jsp.product.model.vo.Product;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class ProductDao {

	Properties prop = null;

	public ProductDao() {

		prop = new Properties();

		String path = ProductDao.class.getResource("/config/product-sql.properties").getPath();

		try {
			prop.load(new FileReader(path));

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Product> selectList(Connection con, String type) {

		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String p_title = "";
		String sql = null;

		switch (type) {

		case "new_product":
			sql = prop.getProperty("product_new"); // 최근 상품 6개
			p_title = "신";
			break;

		case "best_product":
			sql = prop.getProperty("product_best"); // 조회수가 높은 상품 6개
			p_title = "BEST";
			break;
		}

		try {
			pstmt = con.prepareStatement(sql);

			rset = pstmt.executeQuery();

			while (rset.next()) {

				Product pd = new Product();

				pd.setP_no(rset.getInt("p_no"));
				pd.setP_type(rset.getString("p_type_explain"));
				pd.setP_name(rset.getString("p_name"));
				pd.setP_price(rset.getString("p_price"));
				pd.setP_attachment(rset.getString("f_change_name"));
				pd.setP_discount(rset.getInt("p_discount"));
				pd.setP_count(rset.getInt("p_count"));
				pd.setP_explain(p_title);

				list.add(pd);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public int getListCount(Connection con, String type) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		if (type.equals("discount_product")) {
			sql = prop.getProperty("discount_listcount");
		} else {
			sql = prop.getProperty("category_listcount");
		}
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			if (sql == prop.getProperty("category_listcount")) {
				pstmt.setString(1, type);
			}
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Product> selectList_category(Connection con, String type, int currentPage, int limit) {
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		String p_title = "";
		
		if (type.equals("discount_product")) {
			sql = prop.getProperty("discount_list");
			p_title = "할인";
			
		} else {
			sql = prop.getProperty("category_list");
		}
		
		try {
			
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			int startRow = (currentPage -1) * limit +1;
			int endRow = startRow + limit -1;
			
			if (sql == prop.getProperty("category_list")) {
				pstmt.setString(1, type);
				pstmt.setInt(2, endRow);
				pstmt.setInt(3, startRow);
			} else {
				pstmt.setInt(1, endRow);
				pstmt.setInt(2, startRow);
			}
			
			rset = pstmt.executeQuery();
			
			while (rset.next()) {

				if (p_title == "") {
					p_title = rset.getString("p_type_explain");
				}
				
				Product pd = new Product();
				
				pd.setP_no(rset.getInt("p_no"));
				pd.setP_type(rset.getString("p_type_explain"));
				pd.setP_name(rset.getString("p_name"));
				pd.setP_price(rset.getString("p_price"));
				pd.setP_discount(rset.getInt("p_discount"));
				pd.setP_count(rset.getInt("p_count"));
				pd.setP_attachment(rset.getString("f_change_name"));
				pd.setP_explain(p_title);
				
				list.add(pd);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}


}
