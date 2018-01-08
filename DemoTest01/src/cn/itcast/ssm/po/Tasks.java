package cn.itcast.ssm.po;

import java.sql.Timestamp;
import java.util.List;


/**
* @ClassName: Tasks
* @Description:
* @author kai.xu
* @date 2017年12月28日
*
*/
public class Tasks {
	private String id;
	private String name;
	private int progress;
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
	private Timestamp start;
	private int duration;
	private Timestamp end;
	private boolean startIsMilestone;
	private boolean endIsMilestone;
	private boolean collapsed;
	//private String[] assigs;
	private boolean hasChild;
	private List<Assignment> assigs;
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public int getProgress() {
		return progress;
	}
	public boolean isProgressByWorklog() {
		return progressByWorklog;
	}
	public int getRelevance() {
		return relevance;
	}
	public String getType() {
		return type;
	}
	public String getTypeId() {
		return typeId;
	}
	public String getDescription() {
		return description;
	}
	public String getCode() {
		return code;
	}
	public int getLevel() {
		return level;
	}
	public String getStatus() {
		return status;
	}
	public String getDepends() {
		return depends;
	}
	public boolean isCanWrite() {
		return canWrite;
	}
	public Timestamp getStart() {
		return start;
	}
	public int getDuration() {
		return duration;
	}
	public Timestamp getEnd() {
		return end;
	}
	public boolean isStartIsMilestone() {
		return startIsMilestone;
	}
	public boolean isEndIsMilestone() {
		return endIsMilestone;
	}
	public boolean isCollapsed() {
		return collapsed;
	}
/*	public String[] getAssigs() {
		return assigs;
	}
	public void setAssigs(String[] assigs) {
		this.assigs = assigs;
	}*/
	public boolean isHasChild() {
		return hasChild;
	}
	public List<Assignment> getAssigs() {
		return assigs;
	}
	public void setAssigs(List<Assignment> assigs) {
		this.assigs = assigs;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public void setProgressByWorklog(boolean progressByWorklog) {
		this.progressByWorklog = progressByWorklog;
	}
	public void setRelevance(int relevance) {
		this.relevance = relevance;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setDepends(String depends) {
		this.depends = depends;
	}
	public void setCanWrite(boolean canWrite) {
		this.canWrite = canWrite;
	}
	public void setStart(Timestamp start) {
		this.start = start;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public void setEnd(Timestamp end) {
		this.end = end;
	}
	public void setStartIsMilestone(boolean startIsMilestone) {
		this.startIsMilestone = startIsMilestone;
	}
	public void setEndIsMilestone(boolean endIsMilestone) {
		this.endIsMilestone = endIsMilestone;
	}
	public void setCollapsed(boolean collapsed) {
		this.collapsed = collapsed;
	}

	public void setHasChild(boolean hasChild) {
		this.hasChild = hasChild;
	}
	
	
	
}
