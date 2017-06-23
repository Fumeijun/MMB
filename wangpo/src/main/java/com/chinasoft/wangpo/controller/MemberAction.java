package com.chinasoft.wangpo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Result;
import com.chinasoft.wangpo.entity.Type;
import com.chinasoft.wangpo.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberAction {
	@Autowired
	private MemberService memberser;
	
	
	//用户开通会员
	@RequestMapping("/ktMember")
	@ResponseBody
	public Result ktMember(Type type,Account account){
		boolean flag=memberser.ktMember(type, account);
		Result result=new Result();
		if (flag) {
			result.setStatus(1);
			result.setTip("尊敬的用户，您以成功开通会员");
		}else {
			result.setStatus(0);
			result.setTip("开通失败");
		}
		return result;
	}
	
	//查询会员费用的详细情况，展示给客户看
	@RequestMapping("/queryMember")
	@ResponseBody
	public Object queryMember(Page<Account> page,Account account){
		
		page.setParamEntity(account);
		
		System.err.println(account);
		memberser.queryUsers(page);
		return page.getPageMap();
	}
}
