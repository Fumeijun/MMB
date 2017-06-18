package com.chinasoft.wangpo.service.impl;

import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.service.UserLoginService;

@Service("userLoginService")
public class UserLoginServiceimp extends BaseServiceImpl<Account> implements UserLoginService{

	@Override
	public Account accountLogin(Account account) {
		// TODO Auto-generated method stub
		return userDao.userLogin(account);
	}
	
	//修改失败次数
	@Override
	public int accountAddCisu(Account account) {
		// TODO Auto-generated method stub
		return userDao.userAddCiSu(account);
	}

}
