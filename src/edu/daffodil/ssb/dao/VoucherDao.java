package edu.daffodil.ssb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@Component("voucherdao")
public class VoucherDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session() {
		
		return sessionFactory.getCurrentSession();
	}
	
	
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

	public void saveVoucherDetail(VoucherDetail voucherDetail) {
		session().save(voucherDetail);
		System.out.println("DAO "+voucherDetail.toString());
		
	}
	
	
}
