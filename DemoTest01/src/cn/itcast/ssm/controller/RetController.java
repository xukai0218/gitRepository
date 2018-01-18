package cn.itcast.ssm.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import cn.itcast.ssm.po.Assignment;
import cn.itcast.ssm.po.Resources;
import cn.itcast.ssm.po.Ret;
import cn.itcast.ssm.po.Roles;
import cn.itcast.ssm.po.Tasks;
import cn.itcast.ssm.po.TasksVo;
import cn.itcast.ssm.service.ResourcesService;
import cn.itcast.ssm.service.RetService;
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
public class RetController {
	@Autowired
	private ResourcesService resourcesService;
	@Autowired
	private RolesService rolesService;
	@Autowired
	private TasksService tasksService;
	@Autowired
	private RetService retService;

	List<Resources> resources = null;
	List<Roles> roles = null;
	List<Tasks> tasks = null;

	@RequestMapping("/selRetAll")
	@ResponseBody
	public Ret getRetAll(HttpServletRequest request) throws Exception {
		//获得项目id
		String projectId = request.getParameter("projectId");

		Ret ret = retService.selectRetByProjectId(projectId);
		
		if(ret==null){
			retService.insertRetByProId(projectId);
			ret = retService.selectRetByProjectId(projectId);
		}

		//获得多个责任人信息 string
		List<String> assigsJsonList = tasksService.getAssigsByProjectId(projectId);

		List<Tasks> selectAllTasks = tasksService.selectTasksByProjectId(projectId);

	
		Tasks task ;
		/*		Ret ret = retService.selectRet();

		//获得多个责任人信息 string
		List<String> assigsJsonList = tasksService.getAssigsJsonNew();

		List<Tasks> selectAllTasks = tasksService.selectAllTasks();
		 */
		//将责任人信息 List<String> ——>List<Assignment> 对象 
		if(!selectAllTasks.isEmpty()){
			for (int i = 0; i < selectAllTasks.size(); i++) {
				List<Assignment> assignments = new ArrayList<Assignment>();
				if(!assignments.isEmpty()){
					
				}
				String json = assigsJsonList.get(i);
				assignments = JSON.parseArray(json, Assignment.class);

				selectAllTasks.get(i).setAssigs(assignments);

			}
		}else{
			//新建gantt 初始化
			List<Assignment> assignments = new ArrayList<Assignment>();
			if(!assignments.isEmpty()){
				String json = assigsJsonList.get(0);
				assignments = JSON.parseArray(json, Assignment.class);
			}
			task = new Tasks();
			task.setName("name");
			task.setCanWrite(true);
			task.setStatus("STATUS_UNDEFINED");
			task.setAssigs(assignments);
			task.setStart(new Timestamp(System.currentTimeMillis()));
			task.setEnd(new Timestamp(System.currentTimeMillis()));
			selectAllTasks.add(task);
			
		}
		
		ret.setTasks(selectAllTasks);
		//获得项目成员
		ret.setResources(resourcesService.selectAllResources());
		//获得项目角色
		ret.setRoles(rolesService.selectAllRoles());
	
		return ret;
		/*//获得多个责任人信息 string
		List<String> assigsJsonList = tasksService.getAssigsJson("测试1");
		Ret ret = retService.selectAllRet("测试1");
		//将责任人信息 List<String ——>List<Assignment> 对象
		for (int i = 0; i < ret.getTasks().size(); i++) {
		//selectAllTasks.get(i).setId(new Integer(i).toString());
			List<Assignment> assignments = new ArrayList<Assignment>();
			String json = assigsJsonList.get(i);
			assignments = JSON.parseArray(json, Assignment.class);
			if (assignments != null) {
				ret.getTasks().get(i).setAssigs(assignments);
			} else {
				List<Assignment> assignments1 = new ArrayList<Assignment>();
				ret.getTasks().get(i).setAssigs(assignments1);
			}
		}*/

	}

	@RequestMapping("/SaveRet")
	public void SaveResources(HttpServletRequest request)  {

		String projectId = request.getParameter("projectId");

		boolean isDel = true;
		// 拼接格式 让 fastjson 解析
		String tasksArrStr = "[" + request.getParameter("tasks") + "]";
		int tasksCount = 0;
		try {
			tasksCount = tasksService.getTasksCountByProId(projectId);
		} catch (Exception e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}

		// 获得后台Json 数据 转为 Ret对象集合
		List<Ret> retList = JSON.parseObject(tasksArrStr, new TypeReference<List<Ret>>() {});

		int taskSize = retList.get(0).getTasks().size();

		//333333333333333333333333333333333333333333333333333333333333333	
		//删除全部数据
		/*		try {
			//tasksService.delTasksByProjectName("测试1");
			tasksService.delTasks();
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		 */

		int size = retList.get(0).getTasks().size();

		List<TasksVo> tasksVoList = new ArrayList<TasksVo>();
		//获得tasks 将List<Assignment> -> String
		for(int n= 0;n<size;n++){
			Tasks task = retList.get(0).getTasks().get(n);
			List<Assignment> assigs = task.getAssigs();
			String assigsJson = JSON.toJSONString(assigs);

			task.setId(new Integer(n+1).toString());// 中间 删除 添加  保证id保持连续

			TasksVo tasksVo = new TasksVo();
			tasksVo.setAssigsJson(assigsJson);
			tasksVo.setTasks(task);
			tasksVo.setProjectId(projectId);
			tasksVoList.add(tasksVo);
			/*			单条插入
			try {
				tasksService.insertTasksNew(tasksVo);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}*/
		}
		//批量插入
		if(size!=0){
			try {
				tasksService.insertTasksBatch(tasksVoList);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				isDel=false;
				e.printStackTrace();
			}
		}else{
			try {
				retService.delRetByProId(projectId);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

		//删除插入之前的数据
		if(isDel){
			try {
				TasksVo tasksVo = new TasksVo();
				tasksVo.setProjectId(projectId);
				tasksVo.setTasksCount(tasksCount);
				tasksService.delTasksCount(tasksVo);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}


		//111111111111111111111111111111111111111111111111111111111111111		

		/*List<Integer> deletedTaskIds = retList.get(0).getDeletedTaskIds();

		if(!deletedTaskIds.isEmpty()){
			for(int i =0 ;i<deletedTaskIds.size();i++){
				tasksService.delTasksById(deletedTaskIds.get(i).toString());
			}
		}

		//取前台Id
		List<String> taskId = new ArrayList<String>();

		for(int i =0 ;i < taskSize; i++){
			Tasks tasks = retList.get(0).getTasks().get(i);
			taskId.add(tasks.getId());
		}


		String isExist = null;
		for(int i=0;i<taskId.size();i++){
			try {
				isExist = tasksService.getTasksById(taskId.get(i));
				Tasks task = retList.get(0).getTasks().get(i);
				List<Assignment> assigs = task.getAssigs();
				String assigsJson = JSON.toJSONString(assigs);
				TasksVo tasksVo = new TasksVo();
				tasksVo.setAssigsJson(assigsJson);
				tasksVo.setTasks(task);
				//不存在插入 否则更新
				if(isExist==null){

					tasksService.insertTasksNew(tasksVo);
				}else{
					tasksService.updateTasksNew(tasksVo);
				}
				System.out.println(isExist);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		 */





		//2222222222222222222222222222222222222222222222222222222222222222222222
		/*	//取前台Id
		List<String> taskId = new ArrayList<String>();

		for(int i =0 ;i < taskSize; i++){
			Tasks tasks = retList.get(0).getTasks().get(i);
			taskId.add(tasks.getId());
		}


		String isExist = null;
		for(int i=0;i<taskId.size();i++){
			try {
				isExist = tasksService.getTasksById(taskId.get(i));
				Tasks task = retList.get(0).getTasks().get(i);
				List<Assignment> assigs = task.getAssigs();
				String assigsJson = JSON.toJSONString(assigs);
				TasksVo tasksVo = new TasksVo();
				tasksVo.setAssigsJson(assigsJson);
				tasksVo.setTasks(task);
				//不存在插入 否则更新
				if(isExist==null){

					tasksService.insertTasksNew(tasksVo);
				}else{
					tasksService.updateTasksNew(tasksVo);
				}
				System.out.println(isExist);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

		//取数据库Id
		List<String> tasks_Id = new ArrayList<String>();
		tasks_Id=tasksService.getTasksId();
		System.out.println();

		for(String i : taskId){
			System.out.println(i+"前台-------------------------------------");
		}
		for(String i : tasks_Id){
			boolean contains = taskId.contains(i);
			if(!contains){
				tasksService.delTasksById(i);
				System.out.println(i+"后台删除-------------------------------------");
			}
		}*/





		/*保存
	 	int size = retList.get(0).getTasks().size();
		for(int n= 0;n<size;n++){
			Tasks task = retList.get(0).getTasks().get(n);
			//将对象assigs ——> String
			List<Assignment> assigs = task.getAssigs();
			String assigsJson = JSON.toJSONString(assigs);
			System.out.println(assigsJson);
			TasksVo tasksVo = new TasksVo();
			tasksVo.setAssigsJson(assigsJson);
			tasksVo.setTasks(task);
			tasksVo.setProjectName("测试1");
			tasksService.updateTasksNew(tasksVo);
		}*/


	}

}
