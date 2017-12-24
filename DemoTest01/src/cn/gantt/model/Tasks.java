package cn.gantt.model;

import java.sql.Date;

public class Tasks {
	private int id;
	private String name;
/*	private int progress;
	private boolean progressByWorklog;
	private int relevance;
	private String type;
	private String typeId;
	private String description;
	private String code;
	private int level;
	private String status;
	private String depends;
	private boolean canWrite;
	private Date start;
	private int duration;
	private Date end;
	private boolean startIsMilestone;
	private boolean endIsMilestone;
	private boolean assigs;
	private boolean hasChild;*/
	
	public int getId() {
		return id;
	}
	public Tasks(int id, String name) {
	super();
	this.id = id;
	this.name = name;
}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
