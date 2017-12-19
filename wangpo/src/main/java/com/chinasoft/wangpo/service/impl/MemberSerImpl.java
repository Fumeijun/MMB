package com.chinasoft.wangpo.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.dao.MemberDao;
import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Type;
import com.chinasoft.wangpo.service.MemberService;

@Service("memberser")
public class MemberSerImpl implements MemberService{
	@Autowired
	private MemberDao MemberDao;
	public boolean ktMember(Type type,Account account) {
		int a=MemberDao.ktMember(type, account);
		if (a>0) {
			return true;
		}
		return false;
	}

	public void queryUsers(Page<Account> page) {
		List<Account> list=MemberDao.queryMember(page);
		int total=MemberDao.queryCount(page);
		page.setList(list);
		page.setTotalRecords(total);
	}
	
}
