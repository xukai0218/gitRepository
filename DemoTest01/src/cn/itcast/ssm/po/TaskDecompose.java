package cn.itcast.ssm.po;

import java.util.List;


/**
* @ClassName: TaskDecompose
* @Description:
* @author kai.xu
* @date 2018年1月18日
*
*/
public class TaskDecompose {
	private List<TopicTask> tasks;//任务分解集合
	private List<Resources> resources;//项目成员
	private List<Roles> roles;
	private List<Integer> deletedTaskIds;
	private boolean canWrite = true;//默认参数
	private boolean canDelete = true;//默认参数
	private String zoom = "w3";//默认参数
	
	public List<Roles> getRoles() {
		return roles;
	}
	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}

	public List<TopicTask> getTasks() {
		return tasks;
	}
	public void setTasks(List<TopicTask> tasks) {
		this.tasks = tasks;
	}
	public List<Resources> getResources() {
		return resources;
	}
	public void setResources(List<Resources> resources) {
		this.resources = resources;
	}
	public List<Integer> getDeletedTaskIds() {
		return deletedTaskIds;
	}
	public void setDeletedTaskIds(List<Integer> deletedTaskIds) {
		this.deletedTaskIds = deletedTaskIds;
	}
	public boolean isCanWrite() {
		return canWrite;
	}
	public void setCanWrite(boolean canWrite) {
		this.canWrite = canWrite;
	}
	public boolean isCanDelete() {
		return canDelete;
	}
	public void setCanDelete(boolean canDelete) {
		this.canDelete = canDelete;
	}
	public String getZoom() {
		return zoom;
	}
	public void setZoom(String zoom) {
		this.zoom = zoom;
	}


}
