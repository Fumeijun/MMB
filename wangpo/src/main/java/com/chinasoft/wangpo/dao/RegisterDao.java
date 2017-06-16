package com.chinasoft.wangpo.dao;

import com.chinasoft.wangpo.entity.Register;

public interface RegisterDao extends BaseDao<Register>{
	//检查账户名称
	public int checkName(Register register);
}
