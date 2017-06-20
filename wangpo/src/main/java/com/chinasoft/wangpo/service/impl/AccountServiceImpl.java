package com.chinasoft.wangpo.service.impl;

import com.chinasoft.wangpo.dao.AccountDao;
import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.page2;
import com.chinasoft.wangpo.service.AccountService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/**
 * 2017-06-14 23:03
 *
 * @author Makise
 */
@Service("accountService")
public class AccountServiceImpl extends BaseServiceImpl<Account> implements AccountService{
	@Resource
	private AccountDao accountdao;
	@Override
	public Account addFriends(Account account) {
		// TODO Auto-generated method stub
		System.out.println("jksd"+account);
		return accountDao.addFriends(account);
	}
	@Override
	public void queryUsers(page2<Account> page) {
		// TODO Auto-generated method stub
		List<Account> list=accountdao.queryUsers(page);
		int total=accountdao.queryCount(page);
		page.setRows(list);
		page.setTotal(total);	
	}

}
