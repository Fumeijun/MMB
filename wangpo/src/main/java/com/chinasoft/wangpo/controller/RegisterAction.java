package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.service.RegisterService;
import com.chinasoft.wangpo.util.Md5Util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/register")
public class RegisterAction {
	@Autowired//自动装配
	private RegisterService registerService;
	//检查账户名称
	@RequestMapping(value="/checkName",produces="application/json;charset=utf-8")
	@ResponseBody//返回json格式
	public String checkName(HttpServletRequest req,HttpServletResponse resp,Register register) {
		//System.out.println("lalala"+register.getRname());
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
  
	@RequestMapping("/selectPageReview")
	@ResponseBody
	public Object  selectPageReview(Page<Register> page, Register register){
		page.setParamEntity(register);
		return registerService.selectPageUseDyc(page).getPageMap();
  }
	//注册
	@RequestMapping(value="/regmethod",produces="application/json;charset=utf-8")
	@ResponseBody
	public String reg(HttpServletRequest req,HttpServletResponse resp,Register register){
		System.out.println(register.getRname()+","+register.getRpwd()+","+register.getRtel());
		String addr="";
		//密码加密
		String MDpwd=Md5Util.md5(register.getRpwd());
		register.setRpwd(MDpwd);
		int count=registerService.insert(register);
		if(count>0){
			//addr="jsp/lye/register.jsp";
			addr="{\"mess\":\"注册成功\"}";
		}else{
			//addr="jsp/user/userMian.jsp";
			addr="{\"mess\":\"注册失败\"}";
		}
		return addr;
	}
	 //审核插入用户表
    @RequestMapping("/insertL")
    @ResponseBody
    public Integer insert(Register register){
    	int count=registerService.updateByPK(register);
    	if(count>0){
    		return registerService.checkByPK(register);
    	}else {
			return null;
		}
    	
    }
}
