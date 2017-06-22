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

    @RequestMapping("/adminSelect")
    @ResponseBody
    public Object adminSelect(Page<Event> page, Event event){
        page.setParamEntity(event);
        return eventService.selectPage(page).getPageMap();
    }

    @RequestMapping("/check")
    @ResponseBody
    public Integer checkByPK(Event event){
        System.err.println(event.toString());
        return eventService.checkByPK(event);
    }

    @RequestMapping("/userSelect")
    @ResponseBody
    public Object userSelect(Page<Event> page, Event event){
        System.out.println(event.toString());
        page.setParamEntity(event);
        return eventService.selectPageUseDyc(page).getPageMap();
    }
}
