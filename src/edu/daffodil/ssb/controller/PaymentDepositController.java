package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentDepositController {
	
	@RequestMapping("/paymentdepositvoucher")
	public String showPaymentDepositVoucher() {
		
		return "paymentdepositvoucher";
	}

}
