package edu.daffodil.ssb.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daffodil.ssb.model.BankAccount;

import edu.daffodil.ssb.dao.ChartOfAccount;
import edu.daffodil.ssb.dao.VoucherDao;
import edu.daffodil.ssb.dao.VoucherDetail;
import edu.daffodil.ssb.dao.VoucherMaster;

@Service("voucherservice")
public class VoucherService {
	
	private VoucherDao voucherDao;
	@Autowired
	public void setVoucherDao(VoucherDao voucherDao) {
		this.voucherDao = voucherDao;
	}
	
public List<ChartOfAccount> showChartOfAccount() {
		System.out.println("inside service");
		return voucherDao.showChartOfAccount();
	}

public void saveVoucherMaster(VoucherMaster voucherMaster) {
	voucherDao.saveVoucherMaster(voucherMaster);
	System.out.println("Services "+voucherMaster.toString());
	
}

public void saveVoucherDetail(VoucherDetail voucherDetail) {
	voucherDao.saveVoucherDetail(voucherDetail);
	System.out.println("Services "+voucherDetail.toString());
	
}

public List<BankAccount> showbankAccount() {
	System.out.println("show bank inside service");
	return voucherDao.showbankAccount();
}
	
}
