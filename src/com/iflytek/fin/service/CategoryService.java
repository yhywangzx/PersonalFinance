package com.iflytek.fin.service;

import java.util.List;

import com.iflytek.fin.po.Category;

public interface CategoryService {
	//查询
	public List<Category> getCategoryList(int userId,String classify);
	
	//新增
	public void add(Category category);
	//删除
	public void delete(int categoryId);
	
	
	
}
