package com.iflytek.fin.dao;


import java.util.Date;
import java.util.List;







import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.iflytek.fin.po.Finance;

@Repository("financeDao")
public interface FinanceDao {

	//获取页面信息,总是和下面的获取总记录数成对出现
	public List<Finance> getMyFinancePageListByCondition(@Param("userId")int userId,@Param("classify")String classify,@Param("start")Date start,@Param("end")Date end,@Param("pageIndex")int pageIndex,@Param("pageSize")int pageSize);
	
	public int geMytTotalCount(@Param("userId")int userId,@Param("classify")String classify,@Param("start")Date start,@Param("end")Date end);
	
	//新增
	public void add(Finance fin);
	//删除
	public void delete(int financeId);
	
	//通过分类ID删除
	public void deleteByCategoryId(int categoryId);

	

}
