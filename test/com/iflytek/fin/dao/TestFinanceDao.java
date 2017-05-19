package com.iflytek.fin.dao;

import static org.junit.Assert.*;

import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import com.iflytek.fin.po.Finance;

public class TestFinanceDao {
	
	private static SqlSession session;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("mybatis-config.xml"));
		
		session = sessionFactory.openSession(); 
	}

	@Test
	public void testAdd() {
		 FinanceDao dao = session.getMapper(FinanceDao.class);
		 
		 Finance fin = new Finance();
		 fin.setDetail("买了一辆保时捷");
		 fin.setMoney("10000000");
		 fin.setTime(new Date());
		 fin.setCategoryId(5);
		 fin.setUserId(1);
		 
		 dao.add(fin);
		 session.commit();
	}
	@Test
	public void testDelete() {
		 FinanceDao dao = session.getMapper(FinanceDao.class);
		 dao.delete(15);
		 session.commit();
	}
	
}
