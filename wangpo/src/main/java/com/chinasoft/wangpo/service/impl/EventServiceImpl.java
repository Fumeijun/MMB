package com.chinasoft.wangpo.service.impl;

import com.chinasoft.wangpo.entity.Event;
import com.chinasoft.wangpo.service.EventService;
import org.springframework.stereotype.Service;

import java.util.HashMap;

/**
 * @author Makise
 *         date 2017-06-20 16:43
 */
@Service("eventService")
public class EventServiceImpl extends BaseServiceImpl<Event>implements EventService {
    @Override
    public Integer inserts(HashMap map) {
        return eventDao.inserts(map);
    }
}
