package edu.daffodil.ssb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daffodil.ssb.model.ChartOfAccount;
import com.daffodil.ssb.model.Voucher;

import edu.daffodil.ssb.services.VoucherService;

@Controller
public class VoucherController {
	
	@Autowired
	private VoucherService VoucherService;

	public void setVoucherService(VoucherService voucherService) {
		VoucherService = voucherService;
	}


	@RequestMapping("/voucher")
	public String showPaymentDepositVoucher() {
		
		return "voucher";
	}
	
	@RequestMapping(value ="/saveVoucher", method= RequestMethod.POST)
	public @ResponseBody String saveVoucher(@RequestBody Voucher voucher) {
		VoucherService.saveVoucher(voucher);
		
		return "Voucher Saved Successfully!!!";
	}
	
	
	
	@RequestMapping(value="/showControllHead",method=RequestMethod.POST)
	public @ResponseBody List<ChartOfAccount> showControllHead(){	
		System.out.println("request received");
		return VoucherService.showControllHead();
			
	}
	

}
