package com.iflytek.fin.service.impl;




import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.iflytek.fin.dao.UserDao;
import com.iflytek.fin.po.User;
import com.iflytek.fin.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource(name="userDao")
	private UserDao userDao;
	
	@Override
	public void add(User user) {
		userDao.add(user);
		
	}

	@Override
	public User getUser(String email, String password) {
		// TODO Auto-generated method stub
		return userDao.getUser(email, password);
	}

	

	@Override
	public void updatePassword(int userId, String newPassword) {
		// TODO Auto-generated method stub
		userDao.updatePassword(userId, newPassword);
		
	}

	@Override
	public String getUserPassword(int userId) {
		// TODO Auto-generated method stub
		return userDao.getUserPassword(userId);
	}

}
