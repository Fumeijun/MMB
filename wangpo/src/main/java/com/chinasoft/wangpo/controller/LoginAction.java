package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AccountService;

@Controller
@RequestMapping("/loginAction")
public class LoginAction {
	 @Autowired
	    private AccountService accountService;
	 	
	    @RequestMapping("/user")
	    public String userLogin(HttpServletRequest req, HttpServletResponse resp,Account account){
	        
	        return null;
	    }
	    
	    @RequestMapping("/admin")
	    public String adminLogin(HttpServletRequest req, HttpServletResponse resp,Admin admin){
			return null;
	    	
	    }

	    @RequestMapping("/loginOut")
	    public String loginOut(){
	        return null;
	    }
}
