package com.chinasoft.wangpo.dao;


import com.chinasoft.wangpo.entity.Account;

/**
 * 2017-06-15 00:24
 *
 * @author Makise
 */
public interface AccountDao extends BaseDao<Account> {

   // 添加好友
    public Account addFriends(Account account);

}
