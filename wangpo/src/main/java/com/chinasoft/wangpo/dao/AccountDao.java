package com.chinasoft.wangpo.dao;


import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;

/**
 * 2017-06-15 00:24
 *
 * @author Makise
 */
public interface AccountDao extends BaseDao<Account> {

    public Account userLogin(Account account);
    public Admin adminLogin(Admin admin);
}
