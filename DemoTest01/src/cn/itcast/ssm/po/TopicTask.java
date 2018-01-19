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
public class TopicTask {
	private String id;					//orderid
	private String name;				//topic_name 子课题名称
	private int progress; 				//进度百分比	
	private boolean progressByWorklog;	//页面是否能编辑百分比
	private String description;			//描述
	private int level;					//等级
	private String status;				//任务状态
	private String depends;				//依赖
	private boolean canWrite;			//页面是否能编辑
	private Timestamp start;			//任务开始时间
	private int duration;				//天数
	private Timestamp end;				//任务结束时间
	private boolean startIsMilestone;	//开始限定时间
	private boolean endIsMilestone;		//结束限定时间
	private boolean collapsed;			//是否展开
	private boolean hasChild;			//是否有子级
	private List<Assignment> assigs;	//成员
	
	//private String[] assigs;
/*	private int relevance;
	private String type;
	private String typeId;
	private String code;*/
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}

	public boolean isProgressByWorklog() {
		return progressByWorklog;
	}
	public void setProgressByWorklog(boolean progressByWorklog) {
		this.progressByWorklog = progressByWorklog;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDepends() {
		return depends;
	}
	public void setDepends(String depends) {
		this.depends = depends;
	}
	public boolean isCanWrite() {
		return canWrite;
	}
	public void setCanWrite(boolean canWrite) {
		this.canWrite = canWrite;
	}
	public Timestamp getStart() {
		return start;
	}
	public void setStart(Timestamp start) {
		this.start = start;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public Timestamp getEnd() {
		return end;
	}
	public void setEnd(Timestamp end) {
		this.end = end;
	}
	public boolean isStartIsMilestone() {
		return startIsMilestone;
	}
	public void setStartIsMilestone(boolean startIsMilestone) {
		this.startIsMilestone = startIsMilestone;
	}
	public boolean isEndIsMilestone() {
		return endIsMilestone;
	}
	public void setEndIsMilestone(boolean endIsMilestone) {
		this.endIsMilestone = endIsMilestone;
	}
	public boolean isCollapsed() {
		return collapsed;
	}
	public void setCollapsed(boolean collapsed) {
		this.collapsed = collapsed;
	}
	public boolean isHasChild() {
		return hasChild;
	}
	public void setHasChild(boolean hasChild) {
		this.hasChild = hasChild;
	}
	public List<Assignment> getAssigs() {
		return assigs;
	}
	public void setAssigs(List<Assignment> assigs) {
		this.assigs = assigs;
	}
/*	public int getRelevance() {
		return relevance;
	}
	public void setRelevance(int relevance) {
		this.relevance = relevance;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}*/
	
	
}
