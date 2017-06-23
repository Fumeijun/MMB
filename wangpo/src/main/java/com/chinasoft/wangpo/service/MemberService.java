package com.chinasoft.wangpo.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.chinasoft.wangpo.dao.MemberDao;
import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Result;
import com.chinasoft.wangpo.entity.Type;

public interface MemberService {
	//用户开通会员
	public boolean ktMember(Type type, Account account);
	
	//查询会员的基本信息，展示给客户观看
	void queryUsers(Page<Account> page);
}
