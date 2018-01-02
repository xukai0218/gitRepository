package cn.gantt.model;

public class Assignment {
	private String id;
	private String resourceId;
	private String roleId;
	private int effort;
	
	public Assignment(String id, String resourceId, String roleId, int effort) {
		super();
		this.id = id;
		this.resourceId = resourceId;
		this.roleId = roleId;
		this.effort = effort;
	}
	public String getId() {
		return id;
	}
	public String getResourceId() {
		return resourceId;
	}
	public String getRoleId() {
		return roleId;
	}
	public int getEffort() {
		return effort;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public void setEffort(int effort) {
		this.effort = effort;
	}
	
}
