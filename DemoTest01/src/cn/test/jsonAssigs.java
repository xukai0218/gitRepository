package cn.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;

import cn.itcast.ssm.po.Assignment;
import cn.itcast.ssm.service.TasksService;

public class jsonAssigs {
	@Autowired
	private static TasksService tasksService;
	public static void main(String[] args) throws Exception {
		List<String> assigsJson =new ArrayList<>();
		 assigsJson = tasksService.getAssigsJson("测试1");
		
		
		for(int i =0 ;i<assigsJson.size();i++){
			String json=assigsJson.get(i);
			String jsonTeach = JSON.toJSONString(json);  
			System.out.println(json);
			List<Assignment> parseArray = JSON.parseArray(json,Assignment.class);
			//List<Assignment> list2 = JSON.parseObject(jsonTeach,new TypeReference<List<Assignment>>(){});  
		}
		
		
		
		
		
	/*	String str ="[{\"id\":\"1\",\"resourceId\":\"1\",\"roleId\":\"2\",\"effort\":0},{\"id\":\"2\",\"resourceId\":\"2\",\"roleId\":\"2\",\"effort\":0}]";
		
		 List<Assignment> assignment = JSON.parseArray(str,Assignment.class); 
		 for(Assignment a:assignment){
			 System.out.println(a.getId());
			 
		 }*/
	}
}
