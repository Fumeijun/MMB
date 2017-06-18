package com.chinasoft.wangpo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasoft.wangpo.dao.RegisterDao;
import com.chinasoft.wangpo.entity.Register;
import com.chinasoft.wangpo.service.RegisterService;
@Service("registerService")
public class RegisterServiceImpl extends BaseServiceImpl<Register> implements RegisterService{

	@Override
	public int checkName(Register register) {
		// TODO Auto-generated method stub
		return registerDao.checkName(register);
	}

}
