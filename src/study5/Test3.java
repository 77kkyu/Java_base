package study5;

import java.util.Calendar;
import java.util.Scanner;

public class Test3 {

	public static void main(String[] args) {
		
//		int y = scan.nextInt();
//		System.out.println("월을 입력해주세요");
//		int m = scan.nextInt();
		
		Scanner scan = new Scanner(System.in);
		System.out.println("연월를 입력해주세요");
		String date = scan.next(); // 2020-12

		
		String y1 = date.substring(0,4); // 0~3
		String m1 = date.substring(5,7); // 5~6
		 int y = Integer.parseInt(y1);
		 int m = Integer.parseInt(m1);
		
		 String[] str = date.split("-"); // str[0] , str[1]
		 y = Integer.parseInt(str[0]);
		 m = Integer.parseInt(str[1]);
		
		cal(y,m);

	}

	public static void cal(int y, int m) {
		
Calendar cal = Calendar.getInstance(); // 객체생성 (인스턴스 생성)
		
		
		
		int year = y; // 2020
		 
		int month = m-1; // 
			
		
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
