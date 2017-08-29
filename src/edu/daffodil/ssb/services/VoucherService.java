package edu.daffodil.ssb.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.daffodil.ssb.dao.ChartOfAccount;
import edu.daffodil.ssb.dao.Voucher;
import edu.daffodil.ssb.dao.VoucherDao;

@Service("voucherservice")
public class VoucherService {
	
	private VoucherDao voucherDao;
	
	public void saveVoucher(Voucher voucher) {
		voucherDao.saveVoucher(voucher);
	}
	
	public List<ChartOfAccount> showControllHead(){
		return voucherDao.showControllHead();
		
	}

}
