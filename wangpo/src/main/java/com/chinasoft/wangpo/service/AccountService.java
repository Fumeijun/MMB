package com.chinasoft.wangpo.service;


import java.util.List;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.page2;

/**
 * 2017-06-14 23:02
 *
 * @author Makise
 */
public interface AccountService extends BaseService<Account> {
    /**
     *
     * 用户
     */

    public Account addFriends(Account account);
    
    
    void queryUsers(page2<Account> page);
		
	


}
