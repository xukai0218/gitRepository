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
	


}
