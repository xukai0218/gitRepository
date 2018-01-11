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
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.itcast.ssm.service.ResourcesService;
import cn.itcast.ssm.service.RolesService;
import cn.itcast.ssm.service.TasksService;


/**
* @ClassName: FunctionController
* @Description:
* @author kai.xu
* @date 2017年12月27日
*
*/
@Controller
@RequestMapping(value = "/FunctionList")
public class FunctionController {
	@Autowired
	private ResourcesService resourcesService;
	
	@Autowired
	private RolesService rolesService;
	
	@Autowired
	private TasksService tasksService;
	
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
	
	@RequestMapping("/baiduEditor")
	public String toMetronibaiduEditor() {

		return "/FunctionList/baiduEditor/baiduEditor";

	}
	

	/*@RequestMapping("/jQueryGanttTestAll")
	@ResponseBody
	public Ret tojQueryGanttTestAll() {
		String[] str = {}; //{id: "tmp_1514512760705_1", resourceId: "1", roleId: "1", effort: 0}
		Assignment assignment = new Assignment("1","1","1",0);
		List<cn.itcast.ssm.po.Assignment> assigs = new ArrayList<>();
		assigs.add(assignment);
	List<Tasks> tasks = new ArrayList<>();
	try {
		tasks=tasksService.selectAllTasks();
		int size = tasks.size();
		for(int i = 0 ; i < size;i++){
			tasks.get(i).setAssigs(assigs);
		}
		System.out.println();
		//tasks.get(0).getAssigs();
	} catch (Exception e1) {
		// TODO 自动生成的 catch 块
		e1.printStackTrace();
	}
		List<Resources> resources = null;
		try {
			resources = resourcesService.selectAllResources();
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		List<Roles> roles = new ArrayList<>();
		
		try {
			roles = rolesService.selectAllRoles();
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}

		
		List<String> deletedTaskIds = new ArrayList<>();
		Ret ret = new Ret(tasks,resources,roles,5,true,true,true,"w3");
		
		return ret;

	}*/
	@RequestMapping("/jQueryGanttTestSaveResources") 
	public void tojQueryGanttTestSaveResources(HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException {
		String resources = request.getParameter("resources");
		
		System.out.println(resources);
		// ObjectMapper mapper = new ObjectMapper();
		// List<Resources> lendReco = mapper.readValue(parameter1,new TypeReference<List<Resources>>(){});
		// List<Resources> lendReco = parseJson(parameter2, new TypeReference<List<Resources>>() {});
		 //System.out.println(lendReco.size());
		 //JSONArray platformList = JSON.parseArray(parameter2);

		//JSONArray json = JSONArray.fromObject("");//userStr是json字符串
		 // List<User> users= (List<User>)JSONArray.toCollection(json, User.class);
/*		List<Resources> resources = new ArrayList<>();
		Resources resources1 = new Resources("1", "Resource 1");
		Resources resources2 = new Resources("2", "Resource 2");
		Resources resources3 = new Resources("3", "Resource 3");
		resources.add(resources1);
		resources.add(resources2);
		resources.add(resources3);*/
		
	}
	
	

}
