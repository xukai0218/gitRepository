package cn.itcast.ssm.po;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


/**
* @ClassName: TasksVo
* @Description:
* @author kai.xu
* @date 2018年1月1日
*
*/
public class TasksVo {
	private Tasks tasks;
	private List<Integer> assigsIdList = new ArrayList<Integer>();
	private String assigsIds;
	private String projectId;//项目名
	private String assigsJson;//责任人String json格式
	private int tasksCount;
	
	public String getProjectId() {
		return projectId;
	}

	public int getTasksCount() {
		return tasksCount;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public void setTasksCount(int tasksCount) {
		this.tasksCount = tasksCount;
	}

	public Tasks getTasks() {
		return tasks;
	}
	
	public String getAssigsJson() {
		return assigsJson;
	}
	
	public void setAssigsJson(String assigsJson) {
		this.assigsJson = assigsJson;
	}
	public List<Integer> getAssigsIdList() {
		return assigsIdList;
	}
	public void setTasks(Tasks tasks) {
		this.tasks = tasks;
	}
	public void setAssigsIdList(List<Integer> assigsIdList) {
		this.assigsIdList = assigsIdList;
	}
	public String getAssigsIds() {
		return assigsIds;
	}
	public void setAssigsIds(String assigsIds) {
		this.assigsIds = assigsIds;
	}
	
	
	
}
