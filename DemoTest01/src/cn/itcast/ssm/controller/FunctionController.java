package cn.itcast.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.gantt.model.Tasks;

@Controller
@RequestMapping(value = "/FunctionList")
public class FunctionController {
	@RequestMapping("/yellow")
	public String toYellowPage() {

		return "/FunctionList/yellow/yellowPage";

	}

	@RequestMapping("/upload")
	public void upLoad(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

		String realPath1 = request.getServletContext().getRealPath("upload");
		System.out.println();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 判断文件上传类型
		boolean flag = ServletFileUpload.isMultipartContent(request);
		String name = null;
		if (flag) {
			// 创建文件上传工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 创建文件上传对象
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 获取文件迭代器

			try {
				Iterator<FileItem> items = upload.parseRequest(request).iterator();
				while (items.hasNext()) {
					FileItem item = items.next();
					// 获取文件名
					name = item.getName();
					// 定义保存路径
					String realPath = request.getServletContext().getRealPath("upload");
					// 如果文件夹不存在则创建
					File file = new File(realPath);
					if (!file.exists()) {
						file.mkdirs();
					}
					File fileName = new File(realPath + "/" + name);
					item.write(fileName);

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {

		}

		try {
			response.getWriter().print(name);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/MetronicIndex")
	public String toMetronicIndex() {

		return "/index";

	}
	
	@RequestMapping("/jQueryGantt")
	public ModelAndView tojQueryGantt() {
		Tasks task = new Tasks(1,"Test1");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("task", task);
		modelAndView.setViewName("/FunctionList/jQueryGantt/jQueryGantt");
		
		//return "/FunctionList/jQueryGantt/jQueryGantt";
		return modelAndView;

	}
	@RequestMapping("/jQueryGanttTest")
	@ResponseBody
	public Tasks tojQueryGanttTest() {
		
		Tasks task = new Tasks(4,"Test444");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("task", task);
		//modelAndView.setViewName("/FunctionList/jQueryGantt/jQueryGantt");
		
		//return "/FunctionList/jQueryGantt/jQueryGantt";
		return task;

	}
}
