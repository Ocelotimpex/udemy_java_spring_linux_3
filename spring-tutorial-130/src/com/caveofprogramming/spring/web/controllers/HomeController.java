package com.caveofprogramming.spring.web.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.caveofprogramming.spring.web.dao.Offer;

@Controller
public class HomeController {
	
	private static Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String showHome() {

		//logger.debug("Showing home page...");
		logger.info("Showing home page...");
		return "home";
	}
	
}
