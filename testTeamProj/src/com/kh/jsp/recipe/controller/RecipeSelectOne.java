package com.kh.jsp.recipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.jsp.recipe.model.service.RecipeService;
import com.kh.jsp.recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeSelectOne
 */
@WebServlet("/rSelectOne.re")
public class RecipeSelectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeSelectOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		
		int rb_no = Integer.parseInt(request.getParameter("no"));
		
		RecipeService rs = new RecipeService();
		
		Recipe r = rs.selectRecipe(rb_no);
		
		System.out.println(r);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("Recipe", r);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
