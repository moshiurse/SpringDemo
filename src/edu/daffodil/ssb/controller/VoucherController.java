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
import com.daffodil.ssb.model.VoucherMaster;

import edu.daffodil.ssb.services.VoucherService;

@Controller
public class VoucherController {
	
	
	private VoucherService voucherService;
	@Autowired
	public void setVoucherService(VoucherService voucherService) {
		this.voucherService = voucherService;
	}

	@RequestMapping("/voucher")
	public String showPaymentDepositVoucher() {
		
		return "voucher";
	}
	
	@RequestMapping(value ="/saveVoucher", method= RequestMethod.POST)
	public @ResponseBody String saveVoucher(@RequestBody Voucher voucher) {
		voucherService.saveVoucher(voucher);
		
		return "Voucher Saved Successfully!!!";
	}
	
	
	
	@RequestMapping(value="/showControllHead",method=RequestMethod.POST)
	public @ResponseBody List<ChartOfAccount> showControllHead(){	
		System.out.println("request received");
		return voucherService.showControllHead();
			
	}
	
	@RequestMapping(value="/saveVoucherMaster")
	public @ResponseBody String saveVoucherMaster(@RequestBody VoucherMaster voucherMaster) {
		/*voucherMaster.setFinYear(2017);
		voucherMaster.setCurrent("TK");
		voucherMaster.setVoucherStatus("P");
		voucherMaster.setActive("A");
		voucherMaster.setCompanyId(1);
		voucherMaster.setCreatedBy("Moshiur");*/
		voucherService.saveVoucherMaster(voucherMaster);
		System.out.println("Controller "+voucherMaster.toString());
		return "Voucher Master Saved Successfully!!";
	}
	

}
