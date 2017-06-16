package com.chinasoft.wangpo.service.impl;

import com.chinasoft.wangpo.dao.AccountDao;
import com.chinasoft.wangpo.dao.RegisterDao;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.List;

/**
 * @author Makise
 *        date 2017-06-14 17:06
 */
public class BaseServiceImpl<T>implements BaseService<T> {

    @Autowired
    protected AccountDao accountDao;
    @Autowired//自动装配RegisterDao实现类的对象
	protected RegisterDao registerDao;

    @Override
    public int insert(T entity) {
        return 0;
    }

    @Override
    public int updateByPK(T entity) {
        return 0;
    }

    @Override
    public int deleteByPk(T entity) {
        return 0;
    }

    @Override
    public int deleteList(String[] pks) throws Exception {
        return 0;
    }

    @Override
    public List<T> select(T entity) {
        return null;
    }

    @Override
    public Page<T> selectPage(Page<T> page) {
        return null;
    }

    @Override
    public Page<T> selectPageUseDyc(Page<T> page) {
        return null;
    }
}
