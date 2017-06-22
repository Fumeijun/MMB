package com.chinasoft.wangpo.dao;

import com.chinasoft.wangpo.entity.Event;

import java.util.HashMap;

/**
 * @author Makise
 *         date 2017-06-20 16:42
 */
public interface EventDao extends BaseDao<Event> {
    public Integer inserts(HashMap map);
}
