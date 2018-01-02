package cn.test;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import cn.gantt.model.Ret2;


public class fastJson {
	public static void main(String[] args) {
		List<Teacher> teaList = new ArrayList<Teacher>();  
        for(int i=0;i<2;i++) {  
            Teacher teacher = new Teacher(i, "Teacher " + i);  
            List<Student> stus = new ArrayList<Student>();  
            for(int j = 0 ;j<3;j++) {  
                Student s = new Student(j, "Student" + j, 18 +j);   
                stus.add(s);  
            }  
            teacher.setStudents(stus);  
            teaList.add(teacher);  
        }  
        String jsonTeach = JSON.toJSONString(teaList);  
        System.out.println("fastjson = " + jsonTeach); 
        
        
       // String result =""
        List<Teacher> list2 = JSON.parseObject(jsonTeach,new TypeReference<List<Teacher>>(){});  
       // List<Ret2> list = JSON.parseObject(result, new TypeReference<List<Ret2>>() {});
        System.out.println(list2.get(0).getName());
	}
}
