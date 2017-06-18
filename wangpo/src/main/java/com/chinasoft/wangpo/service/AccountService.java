package com.chinasoft.wangpo.service;


import com.chinasoft.wangpo.entity.Account;

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


}
