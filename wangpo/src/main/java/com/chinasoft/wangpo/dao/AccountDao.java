package com.chinasoft.wangpo.dao;


import java.util.List;

import com.chinasoft.wangpo.entity.Account;

/**
 * 2017-06-15 00:24
 *
 * @author Makise
 */
public interface AccountDao extends BaseDao<Account> {

   // 添加好友
    public Account addFriends(Account account);
    
    //再次查询个人信息
    public Account queryPer(Account account);
    //查看输入的密码是否匹配
    public Account queryPwd(Account account);
    //修改密码
    public int updatePwd(Account account);
}
