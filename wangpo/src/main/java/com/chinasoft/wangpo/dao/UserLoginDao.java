package com.chinasoft.wangpo.dao;

import com.chinasoft.wangpo.entity.Account;

public interface UserLoginDao extends BaseDao<Account>{
	public Account userLogin(Account account);
}
