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
	
	public void saveVoucher(Voucher voucher) {
		session().save(voucher);
	}
	

	@SuppressWarnings("unchecked")
	public List<ChartOfAccount> showControllHead() {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(ChartOfAccount.class); 
		
		return criteria.getExecutableCriteria(session()).list();
	}

}
