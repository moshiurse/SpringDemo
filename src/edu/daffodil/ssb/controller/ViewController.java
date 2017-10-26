package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	
	@RequestMapping(value="/autocomplete")
	public String showAutocomplete() {
		
		return "autocomplete";
	}

}
