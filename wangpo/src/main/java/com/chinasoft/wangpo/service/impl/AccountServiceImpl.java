package com.chinasoft.wangpo.service.impl;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AccountService;

import java.util.List;

import org.springframework.stereotype.Service;

/**
 * 2017-06-14 23:03
 *
 * @author Makise
 */
@Service("/accountService")
public class AccountServiceImpl extends BaseServiceImpl<Account> implements AccountService{

    @Override
    public Account userLogin(Account account) {
        return accountDao.userLogin(account);
    }




	public Admin amdinLogin(Admin admin) {
		// TODO Auto-generated method stub
		return accountDao.adminLogin(admin);

	}




	@Override
	public Account addFriends(Account account) {
		// TODO Auto-generated method stub
		System.out.println("jksd"+account);
		return accountDao.addFriends(account);
	}


}
