package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Tasks;
import cn.itcast.ssm.po.TasksVo;

/**
* @ClassName: TasksMapper
* @Description:
* @author kai.xu
* @date 2017年12月28日
*
*/
public interface TasksMapper {
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
	
	public void insertTasksBatch(List tasksVoList) throws Exception;
	
	public void updateTasks(TasksVo tasksVo) throws Exception;
	
	public void updateTasksNew(TasksVo tasksVo) throws Exception;
	
	public void delTasksByProjectName(String projectName) throws Exception;
	
	public void delTasksById(String taskId) throws Exception;
	
	public void delTasks() throws Exception;
	
	public void delTasksCount(int count) throws Exception;
}
