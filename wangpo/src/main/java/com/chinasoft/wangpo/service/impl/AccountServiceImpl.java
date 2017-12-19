package com.chinasoft.wangpo.service.impl;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.service.AccountService;

import java.util.List;

import org.springframework.stereotype.Service;

/**
 * 2017-06-14 23:03
 *
 * @author Makise
 */
@Service("accountService")
public class AccountServiceImpl extends BaseServiceImpl<Account> implements AccountService{

	public Account addFriends(Account account) {
		System.out.println("jksd"+account);
		return accountDao.addFriends(account);
	}

	public Account queryPer(Account account) {
		return accountDao.queryPer(account);
	}

	public Account queryPwd(Account account) {
		return accountDao.queryPwd(account);
	}

	public boolean updatePwd(Account account) {
		int a=accountDao.updatePwd(account);
		if(a>0){
			return true;
		}
		return false;
	}
}
