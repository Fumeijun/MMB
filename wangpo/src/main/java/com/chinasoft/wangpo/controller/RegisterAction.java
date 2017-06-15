package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.service.RegisterService;

@Controller
@RequestMapping("/register")
public class RegisterAction {
	@Autowired//自动装配
	private RegisterService registerService;
	//检查账户名称
	@RequestMapping("/checkName")
	public String checkName(HttpServletRequest req,HttpServletResponse resp,Register register) {
		System.out.println("lalala"+register.getRname());
		String message="";
		int count=registerService.checkName(register);
		if(count>0){
			message="该账户已存在";
		}
		return message;
	}
}
