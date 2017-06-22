package com.chinasoft.wangpo.service;

import com.chinasoft.wangpo.entity.Event;

import java.util.HashMap;

/**
 * @author Makise
 *         date 2017-06-20 16:43
 */
public interface EventService extends BaseService<Event> {
    public Integer inserts(HashMap map);
}
