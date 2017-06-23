package com.chinasoft.wangpo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Type;

public interface MemberDao {
	//用户开通会员
	public int ktMember(@Param("type") Type type,@Param("account") Account account);
	//查询会员信息给客户展示
	List<Account> queryMember(Page<Account> page);
	//查询总的条数
	int queryCount(Page<Account> page);
}
