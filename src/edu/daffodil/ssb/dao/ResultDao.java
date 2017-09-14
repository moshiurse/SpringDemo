package edu.daffodil.ssb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.daffodil.ssb.model.StudentMarks;

@Repository
@Transactional
@Component("resultdao")
public class ResultDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session(){
		return sessionFactory.getCurrentSession();
		
	}
	
	public void saveResult(StudentMarks studentMarks) {
		session().save(studentMarks);
	}
	
	public void updateResult(StudentMarks studentMarks) {
		session().update(studentMarks);
	}
	
	public void deleteResult(StudentMarks studentMarks) {
		session().delete(studentMarks);
	}
	
	

}
