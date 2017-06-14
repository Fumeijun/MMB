package com.chinasoft.wangpo.service;


import com.chinasoft.wangpo.entity.Account;

/**
 * 2017-06-14 23:02
 *
 * @author Makise
 */
public interface AccountService extends BaseService<Account> {
    /**
     * 普通用户登陆接口
     * @param account
     * @return
     */
    public Account userLogin(Account account);


}
