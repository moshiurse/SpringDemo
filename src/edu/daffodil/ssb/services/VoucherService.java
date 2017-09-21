package edu.daffodil.ssb.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daffodil.ssb.model.ChartOfAccount;
import com.daffodil.ssb.model.Voucher;

import edu.daffodil.ssb.dao.VoucherDao;
import edu.daffodil.ssb.dao.VoucherDetail;
import edu.daffodil.ssb.dao.VoucherMaster;

@Service("voucherservice")
public class VoucherService {
	@Autowired
	private VoucherDao voucherDao;

	@Autowired
	public void setVoucherDao(VoucherDao voucherDao) {
		this.voucherDao = voucherDao;
	}

	/*public void saveVoucher(Voucher voucher) {
		voucherDao.saveVoucher(voucher);
	}*/
	
public List<ChartOfAccount> showControllHead() {
		System.out.println("inside servic");
		return voucherDao.showControllHead();
	}

public void saveVoucherMaster(VoucherMaster voucherMaster) {
	voucherDao.saveVoucherMaster(voucherMaster);
	System.out.println("Services "+voucherMaster.toString());
	
}

public void saveVoucherDetail(VoucherDetail voucherDetail) {
	voucherDao.saveVoucherDetail(voucherDetail);
	System.out.println("Services "+voucherDetail.toString());
	
}
	
}
