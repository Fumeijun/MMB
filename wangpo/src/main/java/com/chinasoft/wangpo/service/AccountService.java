package com.chinasoft.wangpo.service;


import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;

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


    public Account addFriends(Account account);

    /**
     * 管理员登录接口
     */
    public Admin amdinLogin(Admin admin);

}
