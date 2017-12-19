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

     Account addFriends(Account account);
     Account queryPer(Account account);
     Account queryPwd(Account account);
     boolean updatePwd(Account account);
}
