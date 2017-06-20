package com.chinasoft.wangpo.controller;

import com.chinasoft.wangpo.entity.Account;
import com.chinasoft.wangpo.entity.Admin;
import com.chinasoft.wangpo.service.AdminLoginService;
import com.chinasoft.wangpo.service.UserLoginService;
import com.chinasoft.wangpo.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/loginAction")
public class LoginAction {
	 @Autowired
	  private UserLoginService userLoginService;
	 @Autowired
	  private AdminLoginService adminLoginService;
	 
	   
		@RequestMapping("/user")
	    public String userLogin(HttpServletRequest req, HttpServletResponse resp,Account account){
	    	/*//获取时间
	    	Data d=new Data();
	    	SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd HH:mm:ss");
	    	String d2=sdf.format(d);//将当前时间写成标准的时间格式的字符串
	    	try {
				Date data=sdf.parse(d2);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
	    	
	    	String pwd=account.getAcc_pwd();
	        String md5=Md5Util.md5(pwd);
	        Account account2=userLoginService.accountLogin(account);
	        if(account2==null){
	        	req.setAttribute("errMsg", "请输入正确的账户名");
				return "../login.jsp";
	        }
	        
	        int a=account2.getAcc_sta();  //从查询结果中拿出输入错误的次数
	        System.out.println(md5.equals(account2.getAcc_pwd()));
	        	//把输入的密码进行加密后与account的密码进行比较
	    
	        if (a<3) {
        		if(md5.equals(account2.getAcc_pwd())){
        			a=0;
	        		account2.setAcc_sta(a);  //登陆成功后次数清零
	        		userLoginService.accountAddCisu(account2);
	        		req.getSession().setAttribute("user",account2);
		        	System.out.println("登陆成功");
		        	 return "../jsp/user/userMian.jsp";
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
	    
			
	    }
	    
	    
	    @RequestMapping("/admin")
	    public String adminLogin(HttpServletRequest req, HttpServletResponse resp,Admin admin){
	    	String pwd=admin.getAdm_pwd();
	    	System.out.println(""+pwd);
	    	String md5=Md5Util.md5(pwd);
	    	admin.setAdm_pwd(md5);
	    	Admin ad2=adminLoginService.adminLogin(admin);
	        if (ad2 != null) {
	        	req.getSession().setAttribute("admin", ad2);
	        	System.out.println("登陆成功");
				return "forward:../jsp/admin/adminMain.jsp";
			}else{
				req.setAttribute("errMsg", "输入的账户名或者密码错误");
				return "../login.jsp";
			}
	    }

	    @RequestMapping("/loginOut")
		@ResponseBody
	    public Object loginOut(HttpServletRequest req, HttpServletResponse resp){
			HttpSession hs=req.getSession();
			hs.invalidate();
			List<String> page =new ArrayList<String>();
			page.add("/login.jsp");
	        return page;
	    }

	    @RequestMapping("/administrator")
	    public String toAdminLogin(){
	    	return "forward:../jsp/admin/adminLogin.jsp";
		}
}
