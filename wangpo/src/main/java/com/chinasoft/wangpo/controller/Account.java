package com.chinasoft.wangpo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Makise
 *         date 2017-06-14 17:31
 */
@Controller
@RequestMapping("/account")
public class Account {

    @RequestMapping("/login")
    public String login(HttpServletRequest req, HttpServletResponse resp,Account account){

        return null;
    }
}
