package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.Roles;
import cn.itcast.ssm.po.Tasks;
import cn.itcast.ssm.po.TasksCustom;
import cn.itcast.ssm.po.TasksVo;

public interface TasksService {
	//查询所有任务
	public List<Tasks> selectAllTasks() throws Exception;
	
	public List<Tasks> selectAllTasksResultMap() throws Exception;
	
	public String getAssigsId(Tasks tasks) throws Exception;
	
	public List<Tasks> selectTasksResultMap(TasksVo tasksVo) throws Exception;
	
	public void updateTasks(TasksVo tasksVo) throws Exception;
	
	public void insertTasks(TasksVo tasksVo) throws Exception;
	
	public String getTasksById(int taskId) throws Exception;
	
	public void delTasksById(Tasks tasks) throws Exception;
	
}
