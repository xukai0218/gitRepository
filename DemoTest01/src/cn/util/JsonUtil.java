package cn.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import cn.test.Person;
import net.sf.json.JSONArray;


/**
 * @ClassName: JsonUtil
 * @Description:
 * @author kai.xu
 * @date 2017年12月29日
 *
 */
public class JsonUtil  {
	public static void main(String[] args) {
		String json="[{'name':'zhuangsan','age':18},{'name':'lisi','age':20}]";
		List<Object> list =new ArrayList<>();
		list= JsonUtil.JsonListToObj(json, Person.class);
		/*		JSONArray jsonarray = JSONArray.fromObject(json);
		System.out.println(jsonarray);
		List list = (List)JSONArray.toCollection(jsonarray, Person.class);*/
		Iterator it = list.iterator();
		while(it.hasNext()){
			Person p = (Person)it.next();
			System.out.println(p.getAge());
		}
	}


	/**
	 * @param <T>
	 * @param <T>
	 * @Title: JsonListToObj
	 * @Description: Json数组转换成List<对象>
	 * @param @param jsonStr
	 * @param @param obj  
	 * @return void
	 * @throws
	 */
	@SuppressWarnings("unchecked")
	public static  <T> List<T> JsonListToObj(String jsonStr,Class<?> objectClass){
		JSONArray jsonarray = JSONArray.fromObject(jsonStr);
		List<T> list = (List<T>)JSONArray.toCollection(jsonarray, objectClass);
		return list;
	}
}
