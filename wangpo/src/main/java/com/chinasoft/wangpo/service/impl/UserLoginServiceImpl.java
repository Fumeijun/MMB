package com.chinasoft.wangpo.service.impl;

import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.service.UserLoginService;

/**
 * @author Kurisu
 */
@Service("userLoginService")
public class UserLoginServiceImpl extends BaseServiceImpl<Account> implements UserLoginService{

	public Account accountLogin(Account account) {
		return userDao.userLogin(account);
	}
	
	public int accountAddCisu(Account account) {
		return userDao.userAddCiSu(account);
	}

}
