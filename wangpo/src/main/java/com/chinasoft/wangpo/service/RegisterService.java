package com.chinasoft.wangpo.service;

import com.chinasoft.wangpo.entity.Register;

public interface RegisterService extends BaseService<Register>{
	//检查账户名称
	public int checkName(Register register);
}
