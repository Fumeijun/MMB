package com.chinasoft.wangpo.dao;

import com.chinasoft.wangpo.entity.Account;

public interface UserDao extends BaseDao<Account>{
	public Account userLogin(Account account);
	
	//修改失败的次数
	public int userAddCiSu(Account account);
}
