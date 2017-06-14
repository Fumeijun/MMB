package com.chinasoft.wangpo.service;

import com.chinasoft.wangpo.entity.Page;

import java.util.List;

/**
 * @author Makise
 *       date 2017-06-14 17:02
 */
public interface BaseService <T>{

    //添加一条记录
    public int insert(T entity);
    //根据主键修改记录
    public int updateByPK(T entity);
    //删除一条记录
    public int deleteByPk(T entity);

    //根据主键列表删除多条记录
    public int deleteList(String pks[]) throws Exception;

    //查询多条记录
    public List<T> select(T entity);

    //根据关键字分页查询
    public Page<T> selectPage(Page<T> page);

    //根据多条件分页查询
    public Page<T> selectPageUseDyc(Page<T> page);
}
