package cn.itcast.ssm.po;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


/**
* @ClassName: TasksVo
* @Description:
* @author kai.xu
* @date 2018年1月1日
*
*/
public class TopicTaskVo {
	private TopicTask topicTask;
	private List<Integer> assigsIdList = new ArrayList<Integer>();
	private String assigsIds;
	private String topicId;//项目名
	private String assigsJson;//责任人String json格式
	private int tasksCount;
	public TopicTask getTopicTask() {
		return topicTask;
	}
	public void setTopicTask(TopicTask topicTask) {
		this.topicTask = topicTask;
	}
	public List<Integer> getAssigsIdList() {
		return assigsIdList;
	}
	public void setAssigsIdList(List<Integer> assigsIdList) {
		this.assigsIdList = assigsIdList;
	}
	public String getAssigsIds() {
		return assigsIds;
	}
	public void setAssigsIds(String assigsIds) {
		this.assigsIds = assigsIds;
	}
	public String getTopicId() {
		return topicId;
	}
	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}
	public String getAssigsJson() {
		return assigsJson;
	}
	public void setAssigsJson(String assigsJson) {
		this.assigsJson = assigsJson;
	}
	public int getTasksCount() {
		return tasksCount;
	}
	public void setTasksCount(int tasksCount) {
		this.tasksCount = tasksCount;
	}
	


	
	
}
