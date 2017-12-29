package cn.gantt.model;

public class TasksTest {//id, name, code, level, start, duration, collapsed
	private int id;
	private String name;
	private String code;
	private int level;
	private long start;
	private int duration;
	private long end;
	private String status;
	public TasksTest(int id, String name, String code, int level, long start, int duration, long end, String status) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
		this.level = level;
		this.start = start;
		this.duration = duration;
		this.end = end;
		this.status = status;
	}
	public TasksTest(int id, String name, String code, int level, long start, int duration, long end) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
		this.level = level;
		this.start = start;
		this.duration = duration;
		this.end = end;
	}
	public int getId() {
		return id;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public long getStart() {
		return start;
	}
	public void setStart(long start) {
		this.start = start;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public long getEnd() {
		return end;
	}
	public void setEnd(long end) {
		this.end = end;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
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
	
	
	
}
