package com.chinasoft.wangpo.service;

import com.chinasoft.wangpo.entity.Admin;

public interface AdminLoginService extends BaseService<Admin>{
	/**
	 * 管理员登陆
	 */
	public Admin adminLogin(Admin admin);
}
