package study5;

import java.util.Calendar;

public class CalenderEx1 {

	public static void main(String[] args) {
		
		
		Calendar cal = Calendar.getInstance(); //달력 객체 생성(인스턴스 생성)
		
//		cal.add(Calendar.DATE, 1); // 날짜를 증가 시키거나 가감 
		
		
		
		cal.set(2020, 0, 1); //날짜 시점 변환 
		
		
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1; // 달만 0부터 시작 
		int date = cal.get(Calendar.DATE);
		
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		
		String mm = "";
		String dd = "";
		String hh = "";
		String mmi = "";
		String ss = "";
	
		
		
		
		if(month <10) mm = "0" + month; 
		else mm = ""+month;
		
		if(date <10) dd = "0" + date;
		else dd = ""+date;
		
		if(hour <10) hh = "0" + hour;
		else hh =""+hour;
		
		if(minute < 10) mmi = "0"+ minute;
		else mmi = ""+minute;
		
		if (second  <10) ss = "0" + second;
		else ss = ""+second;
		
		System.out.println(year+"-"+mm+"-"+dd);
		System.out.println(hh+":"+mmi+":"+ss);
		
		
		
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		String week = "";
		
		switch(dayOfWeek) {
		case 1 : week = "일요일";
		break;
		case 2 : week = "월요일";
		break;
		case 3 : week = "화요일";
		break;
		case 4 : week = "수요일";
		break;
		case 5 : week = "목요일";
		break;
		case 6 : week = "금요일";
		break;
		case 7 : week = "토요일";
		break;
		}
		
		 //일요일 1 부터 시작
		System.out.println("현재 요일: "+ week);
		System.out.println("올해 몇 번째 날: "+ cal.get(Calendar.DAY_OF_YEAR));
		System.out.println("올해 몇 번째 주: "+ cal.get(Calendar.WEEK_OF_YEAR));
		System.out.println("이번 달의 몇 번째 주: "+ cal.get(Calendar.WEEK_OF_MONTH));
		System.out.println("이번 달의 마지막 날 :"+ cal.getActualMaximum(Calendar.DATE));
		
//		
		
		

	}

}
