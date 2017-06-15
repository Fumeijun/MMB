package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Friends;
import com.chinasoft.wangpo.service.AccountService;

@Controller
@RequestMapping("/addAction")
public class AddFriendsAction {
	

	@Autowired
    private AccountService accountService;

	
	
	@RequestMapping("/addFriends")
	public String  AddFriends(HttpServletRequest req, HttpServletResponse resp,Account account) {
		Account reAccount=accountService.addFriends(account);
		
		
		
		return null;
		
	}

}
