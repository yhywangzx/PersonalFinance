package com.iflytek.fin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONSerializer;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iflytek.fin.po.Category;
import com.iflytek.fin.po.User;
import com.iflytek.fin.service.CategoryService;


@Controller
@Scope("prototype")
public class CateController {
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@RequestMapping(value="/person/categoryList",method= RequestMethod.GET)
	public ModelAndView categoryList(HttpSession session){
		
		ModelAndView mv = new ModelAndView("person/categoryList");
		
		User user = (User) session.getAttribute("User");
		
		List<Category> categoryList = categoryService.getCategoryList(user.getId(), "");
		
		mv.addObject("categoryList", categoryList);	
		
		mv.setViewName("person/categoryList");
		
		return mv;
		
	}
	
	@RequestMapping(value="/person/categoryList",method= RequestMethod.POST)
	public ModelAndView categoryList(HttpSession session,String category){
		
		ModelAndView mv = new ModelAndView("person/categoryList");
		
		User user = (User) session.getAttribute("User");
		
		List<Category> categoryList = categoryService.getCategoryList(user.getId(), category);
		
		mv.addObject("categoryList", categoryList);	
		
		mv.setViewName("person/categoryList");
		
		return mv;	
	}
	@RequestMapping(value="/person/categoryAdd",method= RequestMethod.GET)
	public String categoryAdd(){
		return "/person/categoryAdd";
	}
	@RequestMapping(value="/person/categoryAdd",method= RequestMethod.POST)
	public String categoryAdd(HttpSession session,String name,String classify){
		
		User user = (User) session.getAttribute("User");
		
		Category category = new Category();
		category.setName(name);
		category.setClassify(classify);
		category.setUserId(user.getId());
		
		categoryService.add(category);
		
		return "redirect:/person/categoryList";
		
	}
	@RequestMapping(value="/delete",method= RequestMethod.GET)
	public String delete(int id){
		categoryService.delete(id);
		return "redirect:/person/categoryList";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/sortlist",produces="text/html; charset=UTF-8")
	public String sortlist(HttpSession session,String classify){
		User user = (User)session.getAttribute("User");
		List<Category> categoryList = categoryService.getCategoryList(user.getId(), classify);
		Object obj = JSONSerializer.toJSON(categoryList);
		String json = obj.toString();
		return json;
	
	}

}
