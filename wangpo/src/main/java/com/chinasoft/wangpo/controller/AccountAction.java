package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.entity.Result;
import com.chinasoft.wangpo.service.AccountService;
import com.chinasoft.wangpo.util.Md5Util;

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
    	Account account2=accountService.queryPer(account);
    	req.getSession().setAttribute("user",account2);
    	System.out.println(account2);
		return account2;
	}
    @RequestMapping("/perinfgg")
    //查看之后在修改个人信息
    public String PerInfgg(HttpServletRequest req,HttpServletResponse resp,Account account){
    	System.out.println("调用perinfgg方法");
    	System.err.println(account);
    	int a=accountService.updateByPK(account);//修改个人信息
    	if(a>=1){
    		PerInf(req, resp, account);
    		return "../jsp/user/userMian.jsp";
    	}else {
    		return "/wangpo/jsp/user/PerInf.jsp";
		}
    
    }
    	//查看密码是否匹配
    	@RequestMapping("/queryPwd")
    	@ResponseBody
    	public Account queryPwd(HttpServletRequest req,HttpServletResponse resp,Account account){
    		String st=account.getAccPwd();
    		System.out.println("拿到的密码是："+st);
    		String string=Md5Util.md5(st);
    		Result result=new Result();
    		Account account2=accountService.queryPer(account);
    		String string2=accountService.queryPwd(account).getAccPwd();
    		if (string==string2) {
				result.setStatus(1);
				updatePwd(req, resp, account2);
				return account2;
			}else{
				result.setStatus(0);
				result.setTip("查询错误");
			}
			return account2;
    	}
    	//修改密码
    	@RequestMapping("/updatePwd")
    	@ResponseBody
    	public String updatePwd(HttpServletRequest req,HttpServletResponse resp,Account account){
    		boolean flag=accountService.updatePwd(account);
    		Result result=new Result();
    		if (flag) {
				result.setStatus(1);
				result.setTip("修改成功");
				return "../jsp/user/userMian.jsp";
			}else {
				result.setStatus(0);
				result.setTip("修改失败");
				return "../jsp/user/userMian.jsp";
			}
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

    @RequestMapping("/check")
    @ResponseBody
    public Integer checkByPK(Account account){
        return accountService.checkByPK(account);
    }



}
