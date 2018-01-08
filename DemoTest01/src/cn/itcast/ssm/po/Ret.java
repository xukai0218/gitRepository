package cn.itcast.ssm.po;

import java.util.List;

/**
 * @ClassName: Ret
 * @Description:
 * @author kai.xu
 * @date 2018年1月4日
 *
 */
public class Ret {

	private List<Tasks> tasks;
	private List<Resources> resources;
	private List<Roles> roles;
	private int selectRow;
	private List<Integer> deletedTaskIds;
	private boolean canWrite = true;
	private boolean canDelete = true;
	private boolean canWriteOnParent = true;
	private String zoom;

	public List<Integer> getDeletedTaskIds() {
		return deletedTaskIds;
	}

	public void setDeletedTaskIds(List<Integer> deletedTaskIds) {
		this.deletedTaskIds = deletedTaskIds;
	}

	public Ret() {
		super();
	}

	/*
	 * int id; public int getId() { return id; } public void setId(int id) {
	 * this.id = id; } public Ret(int id, List<Tasks> tasks, List<Resources>
	 * resources, List<Roles> roles, int selectRow, boolean canWrite, boolean
	 * canDelete, boolean canWriteOnParent, String zoom) { super(); this.id =
	 * id; this.tasks = tasks; this.resources = resources; this.roles = roles;
	 * this.selectRow = selectRow; this.canWrite = canWrite; this.canDelete =
	 * canDelete; this.canWriteOnParent = canWriteOnParent; this.zoom = zoom; }
	 */
	public Ret(List<Tasks> tasks, List<Resources> resources, List<Roles> roles, int selectRow, boolean canWrite,
			boolean canDelete, boolean canWriteOnParent, String zoom) {
		super();
		this.tasks = tasks;
		this.resources = resources;
		this.roles = roles;
		this.selectRow = selectRow;
		// this.deletedTaskIds = deletedTaskIds;
		this.canWrite = canWrite;
		this.canDelete = canDelete;
		this.canWriteOnParent = canWriteOnParent;
		this.zoom = zoom;
	}

	public List<Tasks> getTasks() {
		return tasks;
	}

	public List<Resources> getResources() {
		return resources;
	}

	public List<Roles> getRoles() {
		return roles;
	}

	public int getSelectRow() {
		return selectRow;
	}

	public boolean isCanWrite() {
		return canWrite;
	}

	public boolean isCanDelete() {
		return canDelete;
	}

	public boolean isCanWriteOnParent() {
		return canWriteOnParent;
	}

	public String getZoom() {
		return zoom;
	}

	public void setTasks(List<Tasks> tasks) {
		this.tasks = tasks;
	}

	public void setResources(List<Resources> resources) {
		this.resources = resources;
	}

	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}

	public void setSelectRow(int selectRow) {
		this.selectRow = selectRow;
	}

	public void setCanWrite(boolean canWrite) {
		this.canWrite = canWrite;
	}

	public void setCanDelete(boolean canDelete) {
		this.canDelete = canDelete;
	}

	public void setCanWriteOnParent(boolean canWriteOnParent) {
		this.canWriteOnParent = canWriteOnParent;
	}

	public void setZoom(String zoom) {
		this.zoom = zoom;
	}

}
