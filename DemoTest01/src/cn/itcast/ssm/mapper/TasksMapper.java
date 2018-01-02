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
	
	public String getAssigsId(Tasks tasks) throws Exception;
	
	public List<Tasks> selectTasksResultMap(TasksVo tasksVo) throws Exception;
	
	public void updateTasks(TasksVo tasksVo) throws Exception;
	
	public void insertTasks(TasksVo tasksVo) throws Exception;
	
}
