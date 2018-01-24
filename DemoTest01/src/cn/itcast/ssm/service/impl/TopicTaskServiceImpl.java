package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.itcast.ssm.mapper.TopicTaskMapper;
import cn.itcast.ssm.po.TopicTask;
import cn.itcast.ssm.po.TopicTaskVo;
import cn.itcast.ssm.service.TopicTaskService;

/**
* @ClassName: TasksServiceImpl
* @Description:
* @author kai.xu
* @date 2017年12月28日
*
*/
public class TopicTaskServiceImpl implements TopicTaskService{
	@Autowired
	TopicTaskMapper topicTasksMapper;


	@Override
	public List<String> getAssigsByTopicId(String projectId) throws Exception {
		// TODO 自动生成的方法存根
		return topicTasksMapper.getAssigsByTopicId(projectId);
	}
	
	@Override
	public List<TopicTask> selectTasksByTopicId(String projectId) throws Exception {
		// TODO 自动生成的方法存根
		return topicTasksMapper.selectTasksByTopicId(projectId);
	}
	
	@Override
	public int getTopicTaskCountByTopicId(String projectId) throws Exception {
		// TODO 自动生成的方法存根
		return topicTasksMapper.getTopicTaskCountByTopicId(projectId);
	}
	
	@Override
	public void insertTopicTasksBatch(List tasksVoList) throws Exception {
		// TODO 自动生成的方法存根
		topicTasksMapper.insertTopicTasksBatch(tasksVoList);
	}
	
	@Override
	public void delTopicTasksCount(TopicTaskVo tasksVo) throws Exception {
		// TODO 自动生成的方法存根
		topicTasksMapper.delTopicTasksCount(tasksVo);
	}





	
	
/*	@Override
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

	@Override
	public String getTasksById(String taskId) throws Exception {
		
		return tasksMapper.getTasksById(taskId);
	}

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
	public int getTasksCount() throws Exception {
		// TODO 自动生成的方法存根
		return tasksMapper.getTasksCount();
	}
*/
}
