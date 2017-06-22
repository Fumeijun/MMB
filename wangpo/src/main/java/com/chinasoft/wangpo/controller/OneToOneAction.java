package com.chinasoft.wangpo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasoft.wangpo.entity.One4one;
import com.chinasoft.wangpo.service.OneToOneService;

@Controller
@RequestMapping("/OneToOne")
public class OneToOneAction {
	@Autowired
	private OneToOneService onetooneService;
	
	@RequestMapping("/insert")
	@ResponseBody
	public Integer insert(HttpServletRequest req,HttpServletResponse resp,One4one one4one) {
		System.out.println("================");
		System.out.println(one4one.getO_acc()+","+one4one.getO_money()+","+one4one.getO_remark());
		one4one.setO_cost("已缴费");
		return onetooneService.insert(one4one);
	}

}
