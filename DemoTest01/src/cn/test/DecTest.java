package cn.test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import cn.test.model.MonthReport;

public class DecTest {
	public static void main(String[] args) {
		/*SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM");
		Date today = new Date();
		String todayString = sdf.format(today);System.out.println("todayString"+todayString);
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(today);
		calendar.add(Calendar.MONTH, -1);System.out.println(sdf.format(calendar.getTime()));
		int month = calendar.get(Calendar.MONTH)+1; System.out.println("当前month:"+month);
		int One_month_before =calendar.get(calendar.MONDAY)-3;System.out.println("当前month:"+One_month_before);*/
		DecTest.getMonth();

	}

	static MonthReport getMonth(){
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:MM:ss");
		MonthReport monthReport = new MonthReport();

		Calendar today=Calendar.getInstance(); //当前时间
		Calendar specialDate  = Calendar.getInstance();
		specialDate.set(Calendar.DATE,20); //指定当月 20 号 
		
		//判断是否新增一月   大于 1 等于 0 小于-1
		if(today.compareTo(specialDate) >=0){  
			today.add(Calendar.MONTH, 1);
		}else{
			today.add(Calendar.MONTH, 0);
		}

		monthReport.setMonth(getMonthList(today.getTime()));
		return monthReport;
	}
	//获得当月及之前的11个月
	static List<String> getMonthList(Date date){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(date);
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM");
		List<String> monthList = new ArrayList<>();
		for(int i=0;i<11;i++){
			if(i==0){
				calendar.add(Calendar.MONTH, 0);
				monthList.add(sdf.format(calendar.getTime()));
			}
			calendar.add(Calendar.MONTH, -1);
			monthList.add(sdf.format(calendar.getTime()));
		}

		for(int i=0;i<monthList.size();i++){
			System.out.println(monthList.get(i));
		}
		return monthList;

	}
}
