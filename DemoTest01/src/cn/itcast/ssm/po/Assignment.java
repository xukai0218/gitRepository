package cn.itcast.ssm.po;


/**
* @ClassName: Assignment
* @Description:
* @author kai.xu
* @date 2017年12月31日
*
*/
public class Assignment {
	private int id;
	private String resourceId;
	private String roleId;
	private int effort;
	
	public int getId() {
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
	public void setId(int id) {
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
