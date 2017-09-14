package edu.daffodil.ssb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.daffodil.ssb.model.ChartOfAccount;
import com.daffodil.ssb.model.Voucher;
import com.daffodil.ssb.model.VoucherMaster;

@Repository
@Transactional
@Component("voucherdao")
public class VoucherDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session() {
		
		return sessionFactory.getCurrentSession();
	}
	
	public void saveVoucher(Voucher voucher) {
		session().save(voucher);
	}
	
/*
	@SuppressWarnings("unchecked")
	public List<ChartOfAccount> showControllHead(String caName) {
		
		String caQuery = "select ca_name from acc_ca where ca_name like '%caName%'";
		Query query = sessionFactory.getCurrentSession().createQuery(caQuery);
		// query.setString("company_name", caName + "%");
		return query.list();
	}*/

	
	@SuppressWarnings("unchecked")
	public List<ChartOfAccount> showControllHead() {
		System.out.println("inside dao");
		List<ChartOfAccount> ca;
		DetachedCriteria criteria = DetachedCriteria.forClass(ChartOfAccount.class);
		ca = criteria.getExecutableCriteria(session()).list();
		System.out.println(ca.toString());
		return ca;
	}

	public void saveVoucherMaster(VoucherMaster voucherMaster) {
		
		session().save(voucherMaster);
		System.out.println("DAO "+voucherMaster.toString());
		
	}
}
