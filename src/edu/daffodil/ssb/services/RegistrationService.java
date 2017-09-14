package edu.daffodil.ssb.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daffodil.ssb.model.User;

import edu.daffodil.ssb.dao.UserDao;

@Service("registrationService")
public class RegistrationService {
	
	
	private UserDao userDao;

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public void saveUser(User user) {
		userDao.saveUser(user);
	}
	
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	
}
