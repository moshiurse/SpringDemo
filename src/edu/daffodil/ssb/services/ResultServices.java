package edu.daffodil.ssb.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daffodil.ssb.model.StudentMarks;

import edu.daffodil.ssb.dao.ResultDao;

@Service("resultService")
public class ResultServices {

	private ResultDao resultDao;

	
	@Autowired
	public void setResultDao(ResultDao resultDao) {
		this.resultDao = resultDao;
	}
	
	public void saveResult(StudentMarks studentMarks) {
		resultDao.saveResult(studentMarks);
	}
	
	public void updateResult(StudentMarks studentMarks) {
		resultDao.updateResult(studentMarks);
	}
	
	public void deleteResult(StudentMarks studentMarks) {
		resultDao.deleteResult(studentMarks);
	}
	
}
