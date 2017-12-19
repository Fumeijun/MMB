package com.chinasoft.wangpo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.dao.RegisterDao;
import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.service.RegisterService;
@Service("registerService")
public class RegisterServiceImpl extends BaseServiceImpl<Register> implements RegisterService{
	
	public int checkName(Register register) {
		return registerDao.checkName(register);
	}
	public int checkPhone(Register register) {
		return registerDao.checkPhone(register);
	}
}
