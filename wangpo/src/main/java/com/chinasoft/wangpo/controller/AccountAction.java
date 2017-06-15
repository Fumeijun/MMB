package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Makise
 *         date 2017-06-14 17:31
 */
@Controller
@RequestMapping("/account")
public class AccountAction {

    @Autowired
    private AccountService accountService;

    @RequestMapping("/user")
    public String userLogin(HttpServletRequest req, HttpServletResponse resp,Account account){
        Account reaccount=accountService.userLogin(account);
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
