package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Event;
import com.chinasoft.wangpo.entity.Page;
import com.chinasoft.wangpo.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Makise
 *         date 2017-06-20 16:40
 */
@Controller
@RequestMapping("/event")
public class EventAction {

    @Autowired
    private EventService eventService;

    @RequestMapping("/eventSelect")
    @ResponseBody
    public Integer selectPageUseDyc(Page<Event> page, Event event){
        page.setParamEntity(event);
        System.err.println(eventService.selectPageUseDyc(page).getPageMap().toString());
        return 1;
    }
}
