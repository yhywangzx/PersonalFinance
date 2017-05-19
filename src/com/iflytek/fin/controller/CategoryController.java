package com.iflytek.fin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;







import net.sf.json.JSONSerializer;

import com.iflytek.fin.po.Category;
import com.iflytek.fin.po.User;
import com.iflytek.fin.service.CategoryService;
import com.iflytek.fin.service.impl.CategoryServiceImpl;


@WebServlet("/sortlist")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession(true);
		User user = (User)session.getAttribute("User");
		
		String classify = request.getParameter("classify").trim();
		
		
		CategoryService categoryService = new CategoryServiceImpl();
	
		List<Category> categoryList = categoryService.getCategoryList(user.getId(), classify);
		
		Object obj = JSONSerializer.toJSON(categoryList);
		String json = obj.toString();
		PrintWriter out = response.getWriter();
		out.write(json);
		out.close();
		
		
	}

}
