package com.iflytek.fin.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iflytek.fin.po.Category;
import com.iflytek.fin.po.Finance;
import com.iflytek.fin.po.User;
import com.iflytek.fin.service.CategoryService;
import com.iflytek.fin.service.FinanceService;


@Controller
@Scope("prototype")
public class FinanceController {
	@Resource(name="financeService")
	private FinanceService financeService;
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@RequestMapping(value="/person/users",method=RequestMethod.GET)
	public ModelAndView user(HttpSession session){
		ModelAndView mv = new ModelAndView("person/users");
		User user = (User) session.getAttribute("User");
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = null;
		Date d2 = null;
		
		try {
			d1 = simpleDateFormat.parse("1990-1-1");
			d2 = simpleDateFormat.parse("2200-1-1");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int pageTotal = financeService.getMyTotalPage(user.getId(), "", d1, d2, 5);
		List<Finance> financeList = financeService.getMyFinancePageList(user.getId(), "", d1, d2, 1, 5);
		
		mv.addObject("financeList", financeList);
		mv.addObject("pageIndex", 1);
		mv.addObject("pageTotal", pageTotal);
		
		return mv;
	
	}
	@RequestMapping(value="/person/users",method=RequestMethod.POST)
	public ModelAndView user(HttpSession session,String beginDate,String endDate,String classify,int pageIndex){
		ModelAndView mv = new ModelAndView("person/users");
		
		User user = (User) session.getAttribute("User");
		if (classify.equals("所有")) {
			classify = "";
		}
		if (beginDate.equals("")) {
			beginDate = "1990-01-01";
		}
		if (endDate.equals("")) {
			endDate = "2200-01-01";
		}
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = null;
		Date d2 = null;
		try {
			d1 = simpleDateFormat.parse(beginDate);
			d2 = simpleDateFormat.parse(endDate);

		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		List<Finance> financeList = financeService.getMyFinancePageList(user.getId(),classify,d1,d2,pageIndex,5);
		int pageTotal = financeService.getMyTotalPage(user.getId(),classify, d1, d2, 5);
		
		mv.addObject("classify", classify);
		mv.addObject("financeList", financeList);
		mv.addObject("pageIndex", pageIndex);
		mv.addObject("pageTotal", pageTotal);
		
		return mv;
	}
	@RequestMapping(value="/person/addlist",method=RequestMethod.GET)
	public ModelAndView financeAdd(HttpSession session){
		ModelAndView mv = new ModelAndView("person/addlist");
		
		User user = (User) session.getAttribute("User");
		List<Category> categoryList = categoryService.getCategoryList(user.getId(), "收入");
		
		mv.addObject("categoryList", categoryList);
		return mv;
		
	}
	@RequestMapping(value="/person/addlist",method=RequestMethod.POST)
	public ModelAndView financeAdd(HttpSession session,String detail,String money,String cname){
		ModelAndView mv = new ModelAndView("person/addlist");
		
		User user = (User) session.getAttribute("User");
		
		if("".equals(detail)){
			mv.addObject("error", "名称不能为空");
			mv.setViewName("/financeAdd"); 
			
		}
		if("".equals(money)){
			mv.addObject("error", "金额不能为空");
			mv.setViewName("/financeAdd"); 
		}
		
		Finance finance = new Finance();//新建一个finance对象,把表单传来的数据穿进去
		finance.setDetail(detail);
		finance.setMoney(money);
		finance.setTime(new Date());
		finance.setCategoryId(Integer.parseInt(cname));	
		finance.setUserId(user.getId());
		
		financeService.add(finance);
		
		mv.setViewName("redirect:/person/users");
		
		return mv;
	}
	@RequestMapping(value="/deletefinance",method=RequestMethod.GET)
	public String deleteFinance(int id){
		financeService.delete(id);
		return "redirect:/person/users";
		
	}
	

	
}
