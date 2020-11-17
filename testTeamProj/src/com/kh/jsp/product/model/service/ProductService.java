package com.kh.jsp.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.jsp.product.model.dao.ProductDao;
import com.kh.jsp.product.model.vo.Product;
import static com.kh.jsp.common.JDBCTemplate.*;

public class ProductService {

	private Connection con;
	private ProductDao pDAO = new ProductDao();

	public ArrayList<Product> selectList(String type) {

		con = getConnection();

		ArrayList<Product> list = pDAO.selectList(con, type);

		close(con);

		return list;
	}

	public Product selectProduct(int pno) {

		Product p = null;

		con = getConnection();

		ProductDao pd = new ProductDao();

//		p=pd.selectProduct(con, pno);

		close(con);

		return p;

	}

	public int getListCount(String type) {

		con = getConnection();

		int result = pDAO.getListCount(con, type);

		close(con);

		return result;
	}

	public ArrayList<Product> selectList_pg(String type, int currentPage, int limit) {

		con = getConnection();

		ArrayList<Product> list = pDAO.selectList_category(con, type, currentPage, limit);

		close(con);

		return list;
	}

}
