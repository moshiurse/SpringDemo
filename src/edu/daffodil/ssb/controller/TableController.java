package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TableController {
	
	@RequestMapping(value="/table")
	public String studentResult() {
		
		return "table";
	}

}
