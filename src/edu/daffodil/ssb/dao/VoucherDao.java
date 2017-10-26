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
	public List<ChartOfAccount> showChartOfAccount() {
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

	@SuppressWarnings("unchecked")
	public List<BankAccount> showbankAccount() {
		System.out.println("bank Dao");
		List<BankAccount> bankAcc;
		DetachedCriteria criteria = DetachedCriteria.forClass(BankAccount.class);
		bankAcc = criteria.getExecutableCriteria(session()).list();
		System.out.println(bankAcc.toString());
		return bankAcc;
	}


	@SuppressWarnings("unchecked")
	public List<Project> showProject() {
		System.out.println("Project Dao");
		
		List<Project> project;
		DetachedCriteria criteria = DetachedCriteria.forClass(Project.class);
		project = criteria.getExecutableCriteria(session()).list();
		System.out.println(project.toString());
		return project;
	}
	
	
}
