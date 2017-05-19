package com.iflytek.fin.controller;


import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iflytek.fin.po.User;
import com.iflytek.fin.service.UserService;


@Controller
@Scope("prototype")
public class UserController {
	@Resource(name="userService")
	private UserService userService;
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String register(){
		return "signUp";
		
	}
	@RequestMapping(value="/signUp",method=RequestMethod.POST)
	public ModelAndView register(User user,String pwd){
		ModelAndView mv = new ModelAndView("signUp");
		
		String password = user.getPassword();
		if(!pwd.equals(password)){
			mv.addObject("email", user.getEmail());
			mv.addObject("name", user.getName());
			mv.addObject("error", "两次密码不一致");
			
			mv.setViewName("signUp");
		}else{
			userService.add(user);
			mv.setViewName("redirect:/signIn");
		}
		return mv;
	
	}
	@RequestMapping(value="/signIn",method=RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("signIn");
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			
			
			for(Cookie c : cookies){
				if(c.getName().equals("email")){
					mv.addObject("email", c.getValue());
					break;
				}
			}
		}
		
		return mv;
	}
	@RequestMapping(value="/signIn",method=RequestMethod.POST)
	public ModelAndView login(String email,String password,HttpSession session,HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		
		User user = userService.getUser(email, password);
		
		if(user != null){
			session.setAttribute("User", user);
			//保存账号到本地
			Cookie c = new Cookie("email", email);
			c.setMaxAge(24*60*60);
			
			response.addCookie(c);
			
			mv.setViewName("redirect:/person/users");
		}else{
			mv.setViewName("signIn");
			mv.addObject("error", "账号或密码错误");
			mv.addObject("email", email);
		}
		return mv;
	}
	@RequestMapping(value="/cancel",method=RequestMethod.GET)
	public String cancel(HttpSession session){
		session.removeAttribute("User");
		
		return "redirect:/person/users";
		
	}
	@RequestMapping(value="/person/resetPassword",method=RequestMethod.GET)
	public String resetPassword(){
		return "person/resetPassword";
		
	}
	@RequestMapping(value="/person/resetPassword",method=RequestMethod.POST)
	public ModelAndView resetPassword(HttpSession session,String oldpwd,String newpwd,String password,HttpServletResponse response,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		User user = (User) session.getAttribute("User");
		
		if(!oldpwd.equals(user.getPassword())){
			mv.addObject("oldmsg", "旧密码错误");
			mv.setViewName("person/resetPassword");
		}
		if(newpwd.equals(user.getPassword())){
			mv.addObject("newmsg", "新密码不能与旧密码相同");
			mv.addObject("pwd", oldpwd);
			mv.setViewName("person/resetPassword");
		}
		if(!newpwd.equals(password)){
			mv.addObject("passwordmsg", "两次密码不一致");
			mv.addObject("psw", newpwd);
			mv.setViewName("person/resetPassword");
		}
		
		userService.updatePassword(user.getId(), password);
		
		session.removeAttribute("User");
		
		
		mv.setViewName("redirect:/signIn");
		
		return mv;
	}
	

}
