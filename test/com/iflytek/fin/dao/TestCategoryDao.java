package com.iflytek.fin.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import com.iflytek.fin.po.Category;

public class TestCategoryDao {
	
	private static SqlSession session;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("mybatis-config.xml"));
		
		session = sessionFactory.openSession();
	}

	@Test
	public void testAdd() {
		CategoryDao dao = session.getMapper(CategoryDao.class);
		
		Category category = new Category();
		category.setName("买车");
		category.setClassify("支出");
		category.setUserId(3);
		
		dao.add(category);
		
		session.commit();
	}
	@Test
	public void testDelete() {
		CategoryDao dao = session.getMapper(CategoryDao.class);
		dao.delete(12);
		session.commit();
	}
	@Test
	public void testGetCategoryList() {
		CategoryDao dao = session.getMapper(CategoryDao.class);
		List<Category> list = dao.getCategoryList(1, "收");
		for(Category category : list){
			System.out.println(category.getName());
		}
	}
}
