package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AccountService;
import com.chinasoft.wangpo.service.AdminLoginService;
import com.chinasoft.wangpo.service.UserLoginService;
import com.chinasoft.wangpo.util.Md5Util;

@Controller
@RequestMapping("/loginAction")
public class LoginAction {
	 @Autowired
	  private UserLoginService userLoginService;
	 @Autowired
	  private AdminLoginService adminLoginService;
	 
	    @RequestMapping("/user")
	    public String userLogin(HttpServletRequest req, HttpServletResponse resp,Account account){
	        String pwd=account.getAcc_pwd();
	        String md5=Md5Util.md5(pwd);
	        account.setAcc_pwd(md5);
	        Account account2=userLoginService.accountLogin(account);
	        if(account2 != null){
	        	req.getSession().setAttribute("admin",account2);
	        	System.out.println("登陆成功");
	        	return "../login.jsp ";
	        }else{
	        	req.setAttribute("errMsg", "输入的账号或者密码错误");
	        	return "../login.jsp";
	        }
	    }
	    
	    @RequestMapping("/admin")
	    public String adminLogin(HttpServletRequest req, HttpServletResponse resp,Admin admin){
	    	String pwd=admin.getAdm_pwd();
	    	String md5=Md5Util.md5(pwd);
	    	admin.setAdm_pwd(md5);
	    	Admin ad2=adminLoginService.adminLogin(admin);
	        if (ad2 != null) {
	        	req.getSession().setAttribute("admin", ad2);
	        	System.out.println("登陆成功");
				return "../login.jsp";
			}else{
				req.setAttribute("errMsg", "输入的账户名或者密码错误");
				return "../login.jsp";
			}
	    }

	    @RequestMapping("/loginOut")
	    public String loginOut(){
	        return null;
	    }
}
