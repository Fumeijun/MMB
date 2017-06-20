package com.chinasoft.wangpo.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("vaCode")
public class VaCodePan {
	@RequestMapping("val")
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
		throws SerialException, IOException{
		resp.setContentType("text/html;charset=utf-8");
		String cc=(String) req.getSession().getAttribute("rand");
		String dd=req.getParameter("vercode");
		PrintWriter pwPrintWriter=resp.getWriter();
		if (dd==null || "".equals(dd)) {
			req.setAttribute("mag", "输入的验证码为空");
		}else {
			if (cc==dd) {
				req.setAttribute("mag", "验证码正确");	
			}else {
				req.setAttribute("mag", "验证码错误");
			}
		}
		pwPrintWriter.flush();
		pwPrintWriter.close();
	}
}
