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
	public Tasks getTasks() {
		return tasks;
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
	
	
}
