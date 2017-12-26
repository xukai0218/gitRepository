package cn.gantt.model;

import java.util.List;

public class Ret {// "canWrite": true, "canDelete":true, "canWriteOnParent":
					// true, "zoom": "w3"
	private List<Tasks> tasks;
	private List<Resources> resources;
	private List<Roles> roles;
	private boolean canWrite = true;
	private boolean canDelete = true;
	private boolean canWriteOnParent = true;
	private String zoom;

	public Ret(List<Tasks> tasks, List<Resources> resources, List<Roles> roles, boolean canWrite, boolean canDelete,
			boolean canWriteOnParent, String zoom) {
		super();
		this.tasks = tasks;
		this.resources = resources;
		this.roles = roles;
		this.canWrite = canWrite;
		this.canDelete = canDelete;
		this.canWriteOnParent = canWriteOnParent;
		this.zoom = zoom;
	}

	public Ret() {
		// TODO Auto-generated constructor stub
	}

	public List<Tasks> getTasks() {
		return tasks;
	}

	public void setTasks(List<Tasks> tasks) {
		this.tasks = tasks;
	}

	public List<Resources> getResources() {
		return resources;
	}

	public void setResources(List<Resources> resources) {
		this.resources = resources;
	}

	public List<Roles> getRoles() {
		return roles;
	}

	public void setRoles(List<Roles> roles) {
		this.roles = roles;
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

	public boolean isCanWriteOnParent() {
		return canWriteOnParent;
	}

	public void setCanWriteOnParent(boolean canWriteOnParent) {
		this.canWriteOnParent = canWriteOnParent;
	}

	public String getZoom() {
		return zoom;
	}

	public void setZoom(String zoom) {
		this.zoom = zoom;
	}

}
