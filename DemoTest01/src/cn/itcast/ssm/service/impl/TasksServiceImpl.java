package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.TasksMapper;
import cn.itcast.ssm.po.Tasks;
import cn.itcast.ssm.po.TasksVo;
import cn.itcast.ssm.service.TasksService;

/**
* @ClassName: TasksServiceImpl
* @Description:
* @author kai.xu
* @date 2017年12月28日
*
*/
public class TasksServiceImpl implements TasksService{
	@Autowired
	TasksMapper tasksMapper;

	@Override
	public List<Tasks> selectAllTasks() throws Exception {

		return tasksMapper.selectAllTasks();
	}

	@Override
	public List<Tasks> selectAllTasksResultMap() throws Exception {

		return tasksMapper.selectAllTasksResultMap();
	}

	@Override
	public String getAssigsId(Tasks tasks) throws Exception {

		return tasksMapper.getAssigsId(tasks);
	}

	@Override
	public List<Tasks> selectTasksResultMap(TasksVo tasksVo) throws Exception {
		
		return tasksMapper.selectTasksResultMap(tasksVo);
	}

	@Override
	public void updateTasks(TasksVo tasksVo) throws Exception {
		
		tasksMapper.updateTasks(tasksVo);
	}

	@Override
	public void insertTasks(TasksVo tasksVo) throws Exception {
		
		tasksMapper.insertTasks(tasksVo);
	}

/*	@Override
	public String getTasksById(String taskId) throws Exception {
		
		return tasksMapper.getTasksById(taskId);
	}*/

	@Override
	public void delTasksById(String taskId) throws Exception {
		
		tasksMapper.delTasksById(taskId);
		
	}

	@Override
	public List<String> getAssigsJson(String projectName) throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getAssigsJson(projectName);
	}

	@Override
	public void updateTasksNew(TasksVo tasksVo) throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.updateTasksNew(tasksVo);
	}

	@Override
	public void delTasksByProjectName(String projectName) throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.delTasksByProjectName(projectName);
	}

	@Override
	public void insertTasksNew(TasksVo tasksVo) throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.insertTasksNew(tasksVo);
	}

	@Override
	public List<String> getAssigsJsonNew() throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getAssigsJsonNew();
	}

	@Override
	public List<String> getTasksId() throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getTasksId();
	}

	@Override
	public String getTasksById(String taskId) throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getTasksById(taskId);
	}

	@Override
	public void delTasks() throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.delTasks();
	}

	@Override
	public void insertTasksBatch(List tasksVoList) throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.insertTasksBatch(tasksVoList);
	}

	@Override
	public int getTasksCount() throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getTasksCount();
	}

	@Override
	public void delTasksCount(int count) throws Exception {
		// TODO 自动生成的方法存根
		tasksMapper.delTasksCount(count);
	}
	


}
