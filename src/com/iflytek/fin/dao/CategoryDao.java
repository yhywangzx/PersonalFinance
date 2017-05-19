package com.iflytek.fin.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.iflytek.fin.po.Category;

@Repository("categoryDao")
public interface CategoryDao {
	//查询
	public List<Category> getCategoryList(@Param("userId")int userId,@Param("classify")String classify);
	
	
	//新增
	public void add(Category category);
	//删除
	public void delete(@Param("categoryId")int categoryId);
	
	
}
