package com.kh.jsp.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.jsp.product.model.service.ProductService;
import com.kh.jsp.product.model.vo.PageInfo;
import com.kh.jsp.product.model.vo.Product;

/**
 * Servlet implementation class ProductList
 */
@WebServlet("/product.pd")
public class ProductList extends HttpServlet {
	private static final long serialVersionUID = 10003L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductList() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String type = request.getParameter("type");

		System.out.println(type);
		
		ArrayList<Product> list = new ArrayList<>();
		ProductService ps = new ProductService();

		String page = "";
		
		int startPage = 0;
		int endPage = 0;
		int maxPage = 0;
		int currentPage = 0;
		int limit = 6;
		int listCount = 0;

		currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		if (type.equals("new_product") || type.equals("best_product")) {

			list = ps.selectList(type);

		} else {

			listCount = ps.getListCount(type);
			
			System.out.println(listCount);
			
			maxPage = (int)((double)listCount/limit + 0.9);
			startPage = (int)(((double)currentPage/limit + 0.9) - 1) * limit + 1;

			endPage = startPage + limit - 1;

			if (endPage > maxPage) {
				endPage = maxPage;
			}

			list = ps.selectList_pg(type, currentPage, limit);

		}

		if (list != null) {
			
			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			request.setAttribute("type", type);
			page = "views/product/product.jsp";
			
		} else {
			request.setAttribute("error-msg", "상품 목록 조회 실패");
			page = "views/common/errorPage.jsp";
		}

		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
