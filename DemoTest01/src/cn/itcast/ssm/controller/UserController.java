package cn.itcast.ssm.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController {
	protected static Logger logger = Logger.getLogger(UserController.class);// 日志

	// 1 跳转到登录界面login.jsp
//	@RequestMapping("/login.do")
//	public String toLoginPage(HttpServletRequest request) {
//
//		return "/login";
//	}

}
