package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
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
public class AccountAction{

    @Autowired
    private AccountService accountService;
    
    @RequestMapping("/selectPageUseDyc")
    @ResponseBody
    public Object selectPageUseDyc(Page<Account> page,Account account){
        page.setParamEntity(account);
        System.out.println(accountService.selectPageUseDyc(page).getPageMap().get("rows").toString());
        return accountService.selectPageUseDyc(page).getPageMap();
    }

    @RequestMapping("/deleteList")
    @ResponseBody
    public Integer deleteList(String pks[]){
        Integer ret=0;
        try {
            ret = accountService.deleteList(pks);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret;
    }
}
