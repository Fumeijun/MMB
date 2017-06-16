package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.service.AccountService;
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
public class AccountAction {

    @Autowired
    private AccountService accountService;
    
    @RequestMapping("/queryAll")
    @ResponseBody
    public Page queryAll(){
        
        return null;
    }
}
