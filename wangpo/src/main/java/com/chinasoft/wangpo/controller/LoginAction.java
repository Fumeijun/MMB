package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AdminLoginService;
import com.chinasoft.wangpo.service.UserLoginService;
import com.chinasoft.wangpo.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/loginAction")
public class LoginAction {
	 @Autowired
	  private UserLoginService userLoginService;
	 @Autowired
	  private AdminLoginService adminLoginService;
	 
	    @RequestMapping("/user")
	    public String userLogin(HttpServletRequest req, HttpServletResponse resp,Account account){
	        String pwd=account.getAcc_pwd();
	        String md5=Md5Util.md5(pwd);
	        Account account2=userLoginService.accountLogin(account);
	        int a=account2.getAcc_sta();  //从查询结果中拿出输入错误的次数
	        System.out.println(md5.equals(account2.getAcc_pwd()));
	        	//把输入的密码进行加密后与account的密码进行比较
	        	if ( a<3) {
	        		if(md5.equals(account2.getAcc_pwd())){
	        			a=0;
		        		account2.setAcc_sta(a);  //登陆成功后次数清零
		        		userLoginService.accountAddCisu(account2);
		        		req.getSession().setAttribute("user",account2);
			        	System.out.println("登陆成功");
	        		}else{
	        			a++;  
	        			account2.setAcc_sta(a);  //输入密码失败时，失败次数+1
	        			userLoginService.accountAddCisu(account2);
	        			req.setAttribute("errMsg", "您输入的密码错误");
	        			System.out.println("a的值为"+a);
	        			return "../login.jsp";
	        		}
				}else{
					req.setAttribute("errMsg", "您的账户已被锁定");
					return "../login.jsp";
				}
	    
			 return "../jsp/user/userMian.jsp";
	    }
	    
	    @RequestMapping("/admin")
	    public String adminLogin(HttpServletRequest req, HttpServletResponse resp,Admin admin){
	    	String pwd=admin.getAdm_pwd();
	    	String md5=Md5Util.md5(pwd);
	    	admin.setAdm_pwd(md5);
	    	Admin ad2=adminLoginService.adminLogin(admin);
	        if (ad2 != null) {
	        	req.getSession().setAttribute("admin", ad2);
	        	System.out.println("登陆成功");
				return "../login.jsp";
			}else{
				req.setAttribute("errMsg", "输入的账户名或者密码错误");
				return "../login.jsp";
			}
	    }

	    @RequestMapping("/loginOut")
	    public String loginOut(HttpServletRequest req, HttpServletResponse resp){
			HttpSession hs=req.getSession();
			hs.invalidate();
	        return "../login.jsp";
	    }

	    @RequestMapping("/administrator")
	    public String toAdminLogin(){
	    	return "forward:../jsp/admin/adminLogin.jsp";
		}
}
