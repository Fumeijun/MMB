package com.chinasoft.wangpo.service;


import java.util.List;

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

    public Account queryPer(Account account);
    //查看输入的密码是否匹配
    public Account queryPwd(Account account);
    //修改密码
    public boolean updatePwd(Account account);
}
