package com.chinasoft.wangpo.service;

import com.chinasoft.wangpo.entity.Account;

public interface UserLoginService extends BaseService<Account>{
	/**
	 * 用户登陆
	 */
	public Account accountLogin(Account account);
	
	/**
	 * 修改失败次数
	 */
	public int accountAddCisu(Account account);
	
}
