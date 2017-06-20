package com.chinasoft.wangpo.dao;


import java.util.List;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.page2;

/**
 * 2017-06-15 00:24
 *
 * @author Makise
 */
public interface AccountDao extends BaseDao<Account> {

   // 添加好友
    public Account addFriends(Account account);
    
    
    List<Account> queryUsers(page2<Account> page);
	int queryCount(page2<Account> page); 
		
	

}
