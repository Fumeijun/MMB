package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.service.RegisterService;

@Controller
@RequestMapping("/register")
public class RegisterAction {
	@Autowired//自动装配
	private RegisterService registerService;
	//检查账户名称
	@RequestMapping(value="/checkName",produces="application/json;charset=utf-8")
	@ResponseBody//返回json格式
	public String checkName(HttpServletRequest req,HttpServletResponse resp,Register register) {
		System.out.println("lalala"+register.getRname());
		String message="";
		int count=registerService.checkName(register);
		//System.out.println(count);
		if(count>0){
			message="{\"mes\":\"该账户已存在\"}";
		}
		return message;
	}
	//检查身份证
	@RequestMapping(value="/checktel",produces="application/json;charset=utf-8")
	@ResponseBody
	public String checkPhone(HttpServletRequest req,HttpServletResponse resp,Register register){
		System.out.println(register.getRid()+","+register.getRname()+","+register.getRpwd()+","+register.getRtel());
		String message="";
		int count=registerService.checkPhone(register);
		if(count>0){
			message="{\"mess\":\"该手机号已被注册\"}";
		}
		return message;
	}
}
