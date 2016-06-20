package com.caveofprogramming.spring.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class OffersController {

	/*
	@RequestMapping("/")
	public String showHome(HttpSession session) {
		
		System.out.println( "Debug 1 : session " + session );
		
		if ( session == null ) {
			ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
			session = attr.getRequest().getSession(true);
		}
		
		session.setAttribute("name", "Boris");
		
		System.out.println( "Debug 1 : session " + session );
		
		return "home";
	}
	*/
	/*
	@RequestMapping("/")
	public ModelAndView showHome() {
	
		ModelAndView mv = new ModelAndView("home");
		
		Map<String, Object> model = mv.getModel();
		
		model.put("name", "<b>River</b>");
		
		return mv;
	}
	*/
	
	@RequestMapping("/")
	public String showHome(Model model) {
		
	
		if ( model != null ) {
			model.addAttribute("name","Tiffany");
		} else {
			System.out.println( "showHome : model is null [ " + model +" ]" );
		}
		
		
		return "home";
	}

}