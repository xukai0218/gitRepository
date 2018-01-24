package cn.test;

import java.util.Calendar;

public class DecTest2 {
	public static void main(String[] args) {
		Calendar cale ;
		cale=Calendar.getInstance();
		int year = cale.get(Calendar.YEAR);
		int month = cale.get(Calendar.MONTH) + 1;
		int day = cale.get(Calendar.DATE);
		int hour = cale.get(Calendar.HOUR_OF_DAY);
		int minute = cale.get(Calendar.MINUTE);
		int second = cale.get(Calendar.SECOND);
		int dow = cale.get(Calendar.DAY_OF_WEEK);
		int dom = cale.get(Calendar.DAY_OF_MONTH);
		int doy = cale.get(Calendar.DAY_OF_YEAR);
		

		System.out.println("Current Date: "+cale.getTime());
		System.out.println("Year: "+year);System.out.println("Month: "+month);
		System.out.println("Day: "+day);
		System.out.println("Hour: "+hour);
		System.out.println("Minute: "+minute);
		System.out.println("Second: "+second);
		System.out.println("Day of Week: "+dow);
		System.out.println("Day of Month: "+dom);
		System.out.println("Day of Year: "+doy);
	}
	// 获取当前年份、月份、日期
	
}
