package com.iflytek.fin.service.impl;

import java.util.List;



import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.iflytek.fin.dao.CategoryDao;
import com.iflytek.fin.dao.FinanceDao;
import com.iflytek.fin.po.Category;
import com.iflytek.fin.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{
	@Resource(name="categoryDao")
	private CategoryDao categoryDao;
	@Resource(name="financeDao")
	private FinanceDao financeDao;
	

	
	
	@Override
	public void add(Category category) {
		categoryDao.add(category);
		
	}

	@Override
	public void delete(int categoryId) {
		financeDao.deleteByCategoryId(categoryId);
		categoryDao.delete(categoryId);
		
		
	}

	
	
	
	@Override
	public List<Category> getCategoryList(int userId, String classify) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryList(userId, classify);
	}

	

	

}
