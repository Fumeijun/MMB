package com.chinasoft.wangpo.interceptor;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 2017-06-14 23:46
 * 登陆认证拦截器
 * @author Makise
 */
public class LoginInterceptor implements HandlerInterceptor {
    /**
     * Handler执行之前调用这个方法
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //获取请求的URL
        String url = request.getRequestURI();
        //URL:login.jsp是公开的;除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
        if(url.indexOf("login.action")>=0){
            return true;
        }
        //获取Session
        HttpSession hs = request.getSession();
        Account user = (Account) hs.getAttribute("user");
        Admin admin=(Admin) hs.getAttribute("admin");

        if(user != null||admin!=null){
            return true;
        }
        //不符合条件的，跳转到登录界面
        request.getRequestDispatcher("/login.jsp").forward(request, response);

        return false;
    }

    /**
     * Handler执行之后，ModelAndView返回之前调用这个方法
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    /**
     * Handler执行完成之后调用这个方法
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
