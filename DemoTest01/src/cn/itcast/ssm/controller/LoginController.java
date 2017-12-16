package cn.itcast.ssm.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	// 登陆
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String result = "{\"result\":true}";
		response.setContentType("application/json");

		System.out.println(request.getParameter("username"));
		PrintWriter out = response.getWriter();
		out.write(result);

		// // 在session中保存用户身份信息
		// session.setAttribute("username", request.getParameter("username"));
		// //获取前段的ID Pwd
		//
		// //String ids=request.getParameter("id");
		// int id = Integer.parseInt(ids);
		// System.out.println(id);
		//
		// String name = request.getParameter("password");
		// User user = new User(id,name);
		//
		// String result;
		// PrintWriter out = null;
		// response.setContentType("application/json");
		// //数据库有匹配 返回 true 反之 返回false
		// if(userService.getOneUser(user)!=null){
		// result="{\"result\":true}";
		// try {
		//
		// out = response.getWriter();
		// out.write(result);
		// HttpSession session= request.getSession();
		// session.setAttribute("User", user);
		// System.out.println("fasongle ");
		// return ;
		// } catch (IOException e1) {
		// e1.printStackTrace();
		// }
		// }else{
		// result="{\"result\":false}";
		// try {
		//
		// out = response.getWriter();
		// out.write(result);
		// return ;
		// } catch (IOException e1) {
		// e1.printStackTrace();
		// }
		// }
		return null;
	}

	@RequestMapping("/FunctionList")
	public String toFunctionList() {
		
		return "/FunctionList/FunctionList";
	}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// 清除session
		session.invalidate();

		// 重定向到商品列表页面
		return "redirect:/items/queryItems.action";
	}

}
