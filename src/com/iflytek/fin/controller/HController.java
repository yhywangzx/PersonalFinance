package com.iflytek.fin.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("prototype")
public class HController {
	
	@RequestMapping(value="/faq",method=RequestMethod.GET)
	public String faq(){
		return "faq";
		
	}
	@RequestMapping(value="/help",method=RequestMethod.GET)
	public String help(){
		return "help";
		
	}
	@RequestMapping(value="/privacyPolicy",method=RequestMethod.GET)
	public String termsAndConditions(){
		return "termsAndConditions";
		
	}
	@RequestMapping(value="/termsAndConditions",method=RequestMethod.GET)
	public String privacyPolicy(){
		return "privacyPolicy";
		
	}

}
