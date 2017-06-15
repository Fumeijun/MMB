package com.chinasoft.wangpo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.dao.AdminLoginDao;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AdminLoginService;

@Service("adminLoginService")
public class AdminLoginServiceImp extends BaseServiceImpl<Admin> implements AdminLoginService{
	@Autowired
		private AdminLoginDao adminLoginDao;
	@Override
	public Admin adminLogin(Admin admin) {
		// TODO Auto-generated method stub
		return adminLoginDao.adminLogin(admin);
	}

}
