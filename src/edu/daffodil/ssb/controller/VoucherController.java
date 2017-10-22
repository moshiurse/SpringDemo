package edu.daffodil.ssb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daffodil.ssb.model.BankAccount;

import edu.daffodil.ssb.dao.ChartOfAccount;
import edu.daffodil.ssb.dao.VoucherDetail;
import edu.daffodil.ssb.dao.VoucherMaster;
import edu.daffodil.ssb.services.VoucherService;

@Controller
public class VoucherController{
	
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
	public @ResponseBody String saveVoucher(@RequestBody VoucherMaster voucherMaster) {
		voucherMaster.setFinYear(1);
		voucherMaster.setCurrent("TK");
		voucherMaster.setVoucherStatus("P");
		voucherMaster.setActive("A");
		voucherMaster.setCompanyId(1);
		voucherMaster.setCreatedBy("Moshiur");
		
		System.out.println("Controller"+voucherMaster.toString());
		voucherService.saveVoucherMaster(voucherMaster);
		
		for(VoucherDetail voucherDetail: voucherMaster.getVoucherDetails()){

			voucherDetail.setVoucherNo(voucherMaster);
			System.out.println(voucherMaster.toString());
			//voucherDetail.setProjectCode(null);
			//voucherDetail.setChartOfAccId(null);
			//voucherDetail.setDepartmentId(null);
			voucherDetail.setBankId(1);
			if(voucherDetail.getCredit()== 0){
				voucherDetail.setCredit(0);
			}else if (voucherDetail.getDebit()== 0) {
				voucherDetail.setDebit(0);
			}	
			voucherService.saveVoucherDetail(voucherDetail);
			System.out.println("Controller"+voucherDetail.toString());
		}
		
		return "Voucher Saved Successfully!!!";
	}

	
	
	
	@RequestMapping(value="/showChartOfAccount",method=RequestMethod.POST)
	public @ResponseBody List<ChartOfAccount> showControllHead(){	
		System.out.println("request received");
		return voucherService.showChartOfAccount();
			
	}
	
	@RequestMapping(value="/showBankAccount", method=RequestMethod.POST)
	public @ResponseBody List<BankAccount> showbankAccount(){
		System.out.println("bank account recieved controller");
		return voucherService.showbankAccount();
	}
	
	
	

}
