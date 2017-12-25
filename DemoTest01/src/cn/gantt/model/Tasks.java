package cn.gantt.model;

import java.sql.Date;

public class Tasks {
	private int id;
	private String name;
	private long start;
	private int end;
	private int duration;
	
	
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
	public long getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public Tasks(int id, String name, long start, int duration) {
		super();
		this.id = id;
		this.name = name;
		this.start = start;
		this.duration = duration;
	}
	
	
}
