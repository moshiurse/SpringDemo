package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChartOfAccountController {
	
	@RequestMapping(value="/chartofaccount")
	public String showChartOfAccount() {
		
		return "chartofaccount";
	}

}
