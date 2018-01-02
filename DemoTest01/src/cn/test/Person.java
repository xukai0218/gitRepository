package cn.test;

import java.util.Date;


/**
* @ClassName: Person
* @Description:test
* @author kai.xu
* @date 2017年12月29日
*
*/
public class Person {
	String id;
	int age;
	String name;
	Date birthday;
	public String getId() {
		return id;
	}
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
}
