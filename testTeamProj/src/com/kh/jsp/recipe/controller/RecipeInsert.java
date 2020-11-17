package com.kh.jsp.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.jsp.attachment.model.vo.Attachment;
import com.kh.jsp.product.model.service.ProductService;
import com.kh.jsp.recipe.model.service.RecipeService;
import com.kh.jsp.recipe.model.vo.Recipe;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class RecipeInsert
 */
@WebServlet("/Insert.r")
public class RecipeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int maxSize = 1024 * 1024 * 10;
		
		if(! ServletFileUpload.isMultipartContent(request)) {
			System.out.println();
			request.getRequestDispatcher("views/admin/Recipe/recipe_Manage.jsp")
			   .forward(request, response);
	}
			
		String root = request.getServletContext().getRealPath("/");
		String savePath = root + "resources/recipeUploadFiles";
	}
	   MultipartRequest mre = new MultipartRequest(request, savePath,
		    maxSize, "UTF-8",
		    new DefaultFileRenamePolicy());
	   
	    ArrayList<String> originNames = new ArrayList<>();
		ArrayList<String> changeNames = new ArrayList<>();
		
		// 화면에서 전달한 파일 이름 가져오기
		Enumeration<String> files = mre.getFileNames(); {
		
		while(files.hasMoreElements()) {
			// 가져온 파일 하나씩 꺼내옴
			String tagName = files.nextElement();
			
			originNames.add(mre.getOriginalFileName(tagName));
			changeNames.add(mre.getFilesystemName(tagName));
		
			System.out.println("tageName : " + tagName);	
			System.out.println(originNames);
			System.out.println(changeNames);
		}
		
		Recipe r = new Recipe();
		
		r.setRb_writer(mre.getParameter("rbWriter"));
		r.setRb_title(mre.getParameter("rbTitle"));
		r.setRb_content(mre.getParameter("rbContent"));
		r.setRb_date(mre.getParameter("rbDate"));
		r.setRb_attachment(mre.getParameter("rbAttachment"));
		
		
		
		 ArrayList<Attachment> list = new ArrayList<>();
		// 리스트에 파일 목록을 하나씩 저장
		for(int i = originNames.size()-1; i >= 0; i--) {
			// 기존에 역순으로 가져온 파일들을 올바른 순서로 재정렬하는 반복문
			Attachment at = new Attachment();
			
			at.setF_filepath(savePath);
			at.setF_name(originNames.get(i));
			at.setF_change_name(changeNames.get(i));
			
			list.add(at);
		}
		
		RecipeService rs = new RecipeService();
		int result = rs.insertRecipe(r, list);
		
		if( result > 0 ) {
			response.sendRedirect("rSelectList.re");
		} else {
			request.setAttribute("error-msg", "레시피 등록 실패!");
			
			request.getRequestDispatcher("views/admin/Recipe/recipe_Manage.jsp")
				   .forward(request, response);			
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
