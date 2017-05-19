package com.iflytek.fin.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.iflytek.fin.po.User;

@Repository("userDao")
public interface UserDao {
	//注册
	public void add(User user);
	//登录
	public User getUser(@Param("email")String email,@Param("password")String password);
	
	public String getUserPassword(@Param("userId")int userId);
	//修改密码
	public void updatePassword(@Param("userId")int userId,@Param("newPassword")String newPassword);

}
