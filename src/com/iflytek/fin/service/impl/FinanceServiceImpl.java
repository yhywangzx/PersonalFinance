package com.iflytek.fin.service.impl;

import java.util.Date;
import java.util.List;





import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.iflytek.fin.dao.FinanceDao;
import com.iflytek.fin.po.Finance;
import com.iflytek.fin.service.FinanceService;

@Service("financeService")
public class FinanceServiceImpl implements FinanceService {
	@Resource(name="financeDao")
	private FinanceDao financeDao;
	
	

	@Override
	public void add(Finance finance) {
		financeDao.add(finance);
	
	}

	@Override
	public void delete(int financeId) {
		financeDao.delete(financeId);
		
	}

	@Override
	public List<Finance> getMyFinancePageList(int userId, String classify,
			Date start, Date end, int pageIndex, int pageSize) {
		
		int count = (pageIndex-1)*pageSize;
		return financeDao.getMyFinancePageListByCondition(userId, classify, start, end, count, pageSize);
	}

	@Override
	public int getMyTotalPage(int userId, String classify, Date start, Date end, int pageSize) {
		int totalCount = financeDao.geMytTotalCount(userId, classify,start, end);
		if(totalCount %pageSize==0){
			return totalCount /pageSize;
		}else{
			return totalCount / pageSize +1;
		}
	}



}
