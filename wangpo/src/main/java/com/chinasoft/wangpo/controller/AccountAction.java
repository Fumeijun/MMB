package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.service.AccountService;
import com.chinasoft.wangpo.util.Md5Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Makise
 *         date 2017-06-14 17:31
 */
@Controller
@RequestMapping("/account")
public class AccountAction{

    @Autowired
    private AccountService accountService;
    
    @RequestMapping("/selectPageUseDyc")
    @ResponseBody
    public Object selectPageUseDyc(Page<Account> page,Account account){
        page.setParamEntity(account);
        return accountService.selectPageUseDyc(page).getPageMap();
    }
    
    //查看个人基本信息
    @RequestMapping("/perInf")
    public Account PerInf(HttpServletRequest req,HttpServletResponse resp,Account account) {
    	
    	accountService.select(account);//按名字查询个人所有信息
    	req.getSession().setAttribute("user",account);
		return account;
	}
    @RequestMapping("/perinfgg")
    //查看之后在修改个人信息
    public String PerInfgg(HttpServletRequest req,HttpServletResponse resp,Account account){
    	System.out.println("调用perinfgg方法");
    	System.err.println(account);
    	int a=accountService.insert(account);//修改个人信息
    	if(a>=1){
    		req.setAttribute("perinfgg", "修改成功");
    		PerInf(req, resp, account);
    		return "../jsp/user/userMian.jsp";
    	}else {
    		req.setAttribute("perinfggs", "修改失败");
    		return "/wangpo/jsp/user/PerInf.jsp";
		}
    
    }
    
}
