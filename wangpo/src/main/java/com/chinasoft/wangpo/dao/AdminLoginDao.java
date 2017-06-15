package com.chinasoft.wangpo.dao;

import com.chinasoft.wangpo.entity.Admin;

public interface AdminLoginDao extends BaseDao<Admin>{
	public Admin adminLogin(Admin admin);
}
