package com.iflytek.fin.service;

import com.iflytek.fin.po.User;

public interface UserService {
	//注册
		public void add(User user);
		//登录
		public User getUser(String email,String password);
		
		public String getUserPassword(int userId);
		//修改密码
		public void updatePassword(int userId,String newPassword);
}
