package com.iflytek.fin.dao;

import static org.junit.Assert.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import com.iflytek.fin.po.User;

public class TestUserDao {

	private static SqlSession session;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("mybatis-config.xml"));
		
		session = sessionFactory.openSession();
	
	}

	@Test
	public void testAdd() {
		UserDao dao = session.getMapper(UserDao.class);
		
		User user = new User();
		user.setEmail("122@qq.com");
		user.setName("王");
		user.setPassword("123");
		user.setSex("男");
		
		dao.add(user);
		
		session.commit();
	}
	@Test
	public void testUpdatePassword(){
		UserDao dao = session.getMapper(UserDao.class);
		
		dao.updatePassword(1, "1234");
		
		session.commit();
	}
	@Test
	public void testGetUser(){
		UserDao dao = session.getMapper(UserDao.class);
		User user = dao.getUser("122@qq.com", "123");
		System.out.println(user.getId());
		assertNotEquals(user, null);
	}
	@Test
	public void testGetUserPassword(){
		UserDao dao = session.getMapper(UserDao.class);
		String password = dao.getUserPassword(12);
		System.out.println(password);
		assertNotEquals(password, null);
	}

}
