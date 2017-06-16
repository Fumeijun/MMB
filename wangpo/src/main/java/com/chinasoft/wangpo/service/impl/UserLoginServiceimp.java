package com.chinasoft.wangpo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.dao.UserLoginDao;
import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.service.UserLoginService;

@Service("userLoginService")
public class UserLoginServiceimp extends BaseServiceImpl<Account> implements UserLoginService{
	@Autowired
	private UserLoginDao userLoginDao;
	@Override
	public Account accountLogin(Account account) {
		// TODO Auto-generated method stub
		return userLoginDao.userLogin(account);
	}
	
	//修改失败次数
	@Override
	public int accountAddCisu(Account account) {
		// TODO Auto-generated method stub
		return userLoginDao.userAddCiSu(account);
	}

}
