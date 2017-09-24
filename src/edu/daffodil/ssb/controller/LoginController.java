package edu.daffodil.ssb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.daffodil.ssb.services.UserService;

@Controller
public class LoginController {

	private UserService userService;

	@Autowired
	public void setUsersService(UserService userService) {
		this.userService = userService;
	} 

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}
	
}
