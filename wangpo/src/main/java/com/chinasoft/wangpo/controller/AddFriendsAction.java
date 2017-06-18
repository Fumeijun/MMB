package com.chinasoft.wangpo.controller;


import java.util.ArrayList;
import java.util.List;

import javax.json.JsonObject;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.service.AccountService;


@Controller
@RequestMapping("/addAction")
public class AddFriendsAction {
	

	@Autowired
    private AccountService accountService;

	
	
	@RequestMapping(value="/addFriends")
	public String  AddFriends(HttpServletRequest req, HttpServletResponse resp,Account account) {
		Account ac=accountService.addFriends(account);
	
/*		String name=req.getParameter("acc_lname");
		String gender=req.getParameter("acc_gender");
		String addr=req.getParameter("Acc_addr");*/
		
	List<Account> list=new ArrayList<Account>();
//		ac.setAcc_lname(name);
//		ac.setAcc_gender(gender);
//		ac.setAcc_addr(addr);
		list.add(ac);
		System.out.println("sssw"+list);
/*		JsonObject object=(JsonObject) new AddFriendsAction();
		
			object.put("list", list);*/

	
		
		return "../jsp/fumeijun/addFriends.jsp";
	}

}
