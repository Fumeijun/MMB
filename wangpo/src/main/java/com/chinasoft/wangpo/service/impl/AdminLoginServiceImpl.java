package com.chinasoft.wangpo.service.impl;

import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AdminLoginService;

/**
 * @author Kurisu
 */
@Service("adminLoginService")
public class AdminLoginServiceImpl extends BaseServiceImpl<Admin> implements AdminLoginService{

	public Admin adminLogin(Admin admin) {
		return adminDao.adminLogin(admin);
	}

}
