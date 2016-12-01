package com.caveofprogramming.spring.web.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caveofprogramming.spring.web.dao.FormValidationGroup;
import com.caveofprogramming.spring.web.dao.Message;
import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.User;
import com.caveofprogramming.spring.web.service.UsersService;

@Controller
public class LoginController {

	private UsersService usersService;

	private static Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/login")
	public String showLogin() {
		logger.info("*** DEBUG *** LoginController: in /login");
		return "login";
	}

	@RequestMapping("/denied")
	public String showDenied() {
		logger.info("*** DEBUG *** LoginController: returning /denied");
		return "denied";
	}

	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}

	@RequestMapping("/newaccount")
	public String showNewAccount(Model model) {
		model.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping("/admin")
	public String showAdmin(Model model) {

		// throw new AccessDeniedException("Hello");
		// try {
		List<User> users = usersService.getAllUsers();

		model.addAttribute("users", users);
		// } catch (Exception e) {
		// System.out.println("Exception: " + e.getClass());
		// }

		return "admin";
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.POST)
	public String createAccount(@Validated(FormValidationGroup.class) User user, BindingResult result) {
		if (result.hasErrors()) {
			return "newaccount";
		}

		user.setAuthority("ROLE_USER");
		user.setEnabled(true);
		System.out.println("DEBUG user: user");

		logger.info("*** DEBUG *** LoginController: username: " + user.getUsername());

		if (usersService.exists(user.getUsername())) {
			System.out.println("Caught duplicate username");
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}
		try {
			usersService.create(user);
		} catch (DuplicateKeyException e) {
			System.out.println(e.getClass());
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}

		return "accountcreated";
	}

	@RequestMapping(value = "/getmessages", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Map<String, Object> getMessages(Principal principal) {
		
		List<Message> messages = null;
		if (principal == null) {
			messages = new ArrayList<Message>();
			
		} else {
			String username = principal.getName();
			messages = usersService.getMessages(username);
		}
		return null;
	}
}
