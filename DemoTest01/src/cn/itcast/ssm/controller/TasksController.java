package cn.itcast.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.gantt.model.Assignment;
import cn.gantt.model.Ret;
import cn.itcast.ssm.po.Resources;
import cn.itcast.ssm.po.Roles;
import cn.itcast.ssm.po.Tasks;
import cn.itcast.ssm.po.TasksCustom;
import cn.itcast.ssm.po.TasksVo;
import cn.itcast.ssm.service.ResourcesService;
import cn.itcast.ssm.service.RolesService;
import cn.itcast.ssm.service.TasksService;

/**
 * @ClassName: TasksController
 * @Description:
 * @author kai.xu
 * @date 2017年12月29日
 *
 */
@Controller
public class TasksController {
	@Autowired
	private ResourcesService resourcesService;
	@Autowired
	private RolesService rolesService;
	@Autowired
	private TasksService tasksService;
	List<Resources> resources = null;
	List<Roles> roles = null;
	List<Tasks> tasks = null;

	@RequestMapping("/getTasksAll")
	@ResponseBody
	public Ret getTasksAll() throws Exception {
		String[] str = {}; // {id: "tmp_1514512760705_1", resourceId: "1",
							// roleId: "1", effort: 0}
		tasks = tasksService.selectAllTasksResultMap();
		resources = resourcesService.selectAllResources();
		roles = rolesService.selectAllRoles();

		List<Integer> assigsIdList = null;
		TasksVo tasksVo = null;
		List<Tasks> tasksList = new ArrayList<Tasks>();
		for (int i = 0; i <tasks.size(); i++) {
			String assigsId = tasksService.getAssigsId(tasks.get(i));
			String[] a = assigsId.split(",");
			assigsIdList = new ArrayList<Integer>();
			int size = a.length;
			// 字符串数组转化为int数组
			for (int j = 0; j < size; j++) {
				assigsIdList.add(Integer.parseInt(a[j]));
				System.out.println(assigsIdList.get(j));
			}
			// 查询参数 task.id assigsId
			tasksVo = new TasksVo();
			tasksVo.setTasks((Tasks) tasksService.selectAllTasksResultMap().get(i));
			tasksVo.setAssigsIdList(assigsIdList);
			// 查询结果
			tasksList.addAll(tasksService.selectTasksResultMap(tasksVo));
		}

		Ret ret = new Ret(tasksList, resources, roles, 5, true, true, true, "w3");

		return ret;
	}

	@RequestMapping("/SaveTasks")
	public void SaveResources(HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException {
		String tasks = request.getParameter("tasks");

		System.out.println(tasks);

	}
}
