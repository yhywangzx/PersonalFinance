package com.iflytek.fin.service;

import java.util.Date;
import java.util.List;

import com.iflytek.fin.po.Finance;


public interface FinanceService {
	
	public void add(Finance finance);
	
	public void delete(int financeId);
	
	//获取页面信息,总是和下面的获取总记录数成对出现
	public List<Finance> getMyFinancePageList(int userId,String classify,Date start, Date end,int pageIndex,int pageSize);
	
	public int getMyTotalPage(int userId,String classify,Date start, Date end,int pageSize);
}
