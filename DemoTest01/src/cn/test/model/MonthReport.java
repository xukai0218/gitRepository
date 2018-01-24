package cn.test.model;

import java.util.List;

public class MonthReport {
	private int id;
	private List<String> monthList;
	private String current_month;
	private String one_month_before;
	private String two_month_before;
/*	private String three_month_before;
	private String four_month_before;
	private String five_month_before;
	private String six_month_before;
	private String seven_month_before;
	private String eight_month_before;
	private String night_month_before;
	private String ten_month_before;
	private String eleven_month_before;*/
	public int getId() {
		return id;
	}
	public List<String> getMonth() {
		return monthList;
	}
	public void setMonth(List<String> month) {
		this.monthList = month;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCurrent_month() {
		return current_month;
	}
	public void setCurrent_month(String current_month) {
		this.current_month = current_month;
	}
	public String getOne_month_before() {
		return one_month_before;
	}
	public void setOne_month_before(String one_month_before) {
		this.one_month_before = one_month_before;
	}
	public String getTwo_month_before() {
		return two_month_before;
	}
	public void setTwo_month_before(String two_month_before) {
		this.two_month_before = two_month_before;
	}

	
}
