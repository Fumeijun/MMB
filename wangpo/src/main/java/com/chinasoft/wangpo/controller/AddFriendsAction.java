package com.chinasoft.wangpo.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.json.JsonObject;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.page2;
import com.chinasoft.wangpo.service.AccountService;


@Controller
@RequestMapping("/addAction")
public class AddFriendsAction {
	

	@Autowired
    private AccountService accountService;

	
	
	@RequestMapping(value="/addFriends")
	@ResponseBody
	public Object  AddFriends(Page<Account> page,Account account) {
		page.setParamEntity(account);
		
		
		return accountService.selectPageUseDyc(page).getPageMap();

	}
	@RequestMapping("/queryUsers")
	@ResponseBody
	public page2<Account> queryUsers(page2<Account> page){
		accountService.queryUsers(page);
		System.out.println("page="+page);
		return page;
	}

}
