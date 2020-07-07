package study5;

import java.util.Calendar;

public class CalendarView {

	public static void main(String[] args) {
		
		Calendar cal = Calendar.getInstance(); // 객체생성 (인스턴스 생성)
		
		for(int a=0; a<3; a++) { // 1~x 월 까지 반복 출력 
		
		int year = cal.get(Calendar.YEAR); // 2020
		 
		int month = a; // 
			
		
		cal.set(year, month, 1); // 마지막 1 은 요일 셋팅 
		
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK); // 그래서 1~7일 

		int lastDay = cal.getActualMaximum(Calendar.DATE);
		
		System.out.println(year+"년-"+(month+1)+"월");
		System.out.println("--------------------");
		
		int cnt = 1;
		
		for(int i=1; i<dayOfWeek; i++) { //앞 공백 
			System.out.print("   ");
			cnt++;
			
		}
		
		for(int d=1; d<=lastDay; d++) { 
			
			String dd ="";
			if(d <10) dd = "0" +d;
			else dd = ""+d;

			System.out.print(dd+" ");
			if(cnt%7 == 0) {
			System.out.println();
			}
			cnt++;
		}
		System.out.println();
		}
	}

}
