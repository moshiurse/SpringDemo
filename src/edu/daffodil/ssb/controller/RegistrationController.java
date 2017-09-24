package edu.daffodil.ssb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daffodil.ssb.model.User;

import edu.daffodil.ssb.services.UserService;

@Controller
public class RegistrationController {
	
	@Autowired
	private UserService registrationService;
	
	@RequestMapping(value="/registration")
	public String showRegistration() {
		return "registration";
	}
	
	
	public void setRegistrationService(UserService registrationService) {
		this.registrationService = registrationService;
	}



	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public @ResponseBody String saveUser(@RequestBody User user) {
		System.out.println("saving user: " + user.toString());
		registrationService.saveUser(user);
		
		return "Refistration Successfull!!!";
		
	}
	
}
