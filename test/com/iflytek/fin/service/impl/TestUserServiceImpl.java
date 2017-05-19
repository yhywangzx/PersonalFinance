package com.iflytek.fin.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;

import com.iflytek.fin.po.User;
import com.iflytek.fin.service.UserService;

public class TestUserServiceImpl {

	@Test
	public void test() {
		User u = new User();
		u.setEmail("65465");
		u.setName("shidh");
		u.setPassword("123");
		u.setSex("男");
		UserService service = new UserServiceImpl();
		service.add(u);
	}

}
