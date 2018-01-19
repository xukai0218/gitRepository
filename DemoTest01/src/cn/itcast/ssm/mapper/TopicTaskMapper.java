package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.TopicTask;
import cn.itcast.ssm.po.TopicTaskVo;

/**
* @ClassName: TopicTasksMapper
* @Description:
* @author kai.xu
* @date 2017年12月28日
*
*/
public interface TopicTaskMapper {
	//通过项目Id找到得到 assign字段的 list集合
	public List<String> getAssigsByTopicId(String projectId) throws Exception;
	//通过项目Id找到得到 相应任务集合
	public List<TopicTask> selectTasksByTopicId(String projectId) throws Exception;
	//通过项目Id得到 相应任务数
	public int getTopicTaskCountByTopicId(String projectId) throws Exception;
	//通过项目Id批量插入任务
	public void insertTopicTasksBatch(List tasksVoList) throws Exception;
	//通过项目Id 任务数量 删除 未插入前记录
	public void delTopicTasksCount(TopicTaskVo tasksVo) throws Exception;
/*	
	//查询所有任务
	public List<Tasks> selectAllTasks() throws Exception;
	
	public List<Tasks> selectAllTasksResultMap() throws Exception;
	
	public List<Tasks> selectTasksResultMap(TasksVo tasksVo) throws Exception;
	
	public int getTasksCount() throws Exception;
	
	public String getAssigsId(Tasks tasks) throws Exception;
	
	public List<String> getAssigsJsonNew() throws Exception;
	
	public List<String> getTasksId() throws Exception;
	
	public String getTasksById(String taskId) throws Exception;
	//获取json
	public List<String> getAssigsJson(String projectName) throws Exception;
	
	public void insertTasks(TasksVo tasksVo) throws Exception;
	
	public void insertTasksNew(TasksVo tasksVo) throws Exception;
	
	public void updateTasks(TasksVo tasksVo) throws Exception;
	
	public void updateTasksNew(TasksVo tasksVo) throws Exception;
	
	public void delTasksByProjectName(String projectName) throws Exception;
	
	public void delTasksById(String taskId) throws Exception;
	
	public void delTasks() throws Exception;
	*/
}
