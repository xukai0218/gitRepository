package cn.itcast.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.scheduling.config.Task;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.gantt.model.Resources;
import cn.gantt.model.Ret;
import cn.gantt.model.Roles;
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
		// Tasks task = new Tasks(1,"Test1");
		ModelAndView modelAndView = new ModelAndView();
		// modelAndView.addObject("task", task);
		// modelAndView.setViewName("/FunctionList/jQueryGantt/jQueryGantt");

		// return "/FunctionList/jQueryGantt/jQueryGantt";
		return modelAndView;

	}

	@RequestMapping("/jQueryGanttTest")
	@ResponseBody
	public List tojQueryGanttTest() {
		// {"id": -1, "name": "Gantt editor", "progress": 0,
		// "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "",
		// "description": "", "code": "", "level": 0, "status": "STATUS_ACTIVE",
		// "depends": "", "canWrite": true, "start": 1396994400000, "duration":
		// 20, "end": 1399586399999, "startIsMilestone": false,
		// "endIsMilestone": false, "collapsed": false, "assigs": [],
		// "hasChild": true},
		long time = System.currentTimeMillis();

		Tasks task1 = new Tasks(1, "task1", "1", 0, System.currentTimeMillis(), 1, System.currentTimeMillis());
		Tasks task2 = new Tasks(2, "task2", "2", 1, System.currentTimeMillis(), 2, System.currentTimeMillis());
		Tasks task3 = new Tasks(3, "task3", "3", 2, System.currentTimeMillis(), 3, System.currentTimeMillis());
		List<Tasks> tasks = new ArrayList<>();
		tasks.add(task1);
		tasks.add(task2);
		tasks.add(task3);
		List<Resources> resources = new ArrayList<>();
		Resources resources1 = new Resources("1", "Resource 1");
		Resources resources2 = new Resources("2", "Resource 2");
		Resources resources3 = new Resources("3", "Resource 3");
		resources.add(resources1);
		resources.add(resources2);
		resources.add(resources3);
		List<Roles> roles = new ArrayList<>();
		Roles roles1 = new Roles("1", "Project Manager");
		Roles roles2 = new Roles("2", "Worker");
		Roles roles3 = new Roles("3", "Stakeholder");
		Roles roles4 = new Roles("4", "Customer");
		roles.add(roles1);
		roles.add(roles2);
		roles.add(roles3);
		roles.add(roles4);
		
		Ret ret = new Ret(tasks,resources,roles,true,true,true,"w3");
		
		/*Ret ret = new Ret();
		ret.setTasks(tasks);
		ret.setResources(resources);*/
		
		return tasks;

	}
	@RequestMapping("/jQueryGanttTestResources")
	@ResponseBody
	public List tojQueryGanttTestResources() {
		List<Resources> resources = new ArrayList<>();
		Resources resources1 = new Resources("1", "Resource 1");
		Resources resources2 = new Resources("2", "Resource 2");
		Resources resources3 = new Resources("3", "Resource 3");
		resources.add(resources1);
		resources.add(resources2);
		resources.add(resources3);
		
		return resources;

	}
}
