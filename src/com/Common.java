package com;

import java.util.Calendar;

public class Common {
	
	public static void claView2(String a) {
		
   
		
	}
	
	///////////////////////////////////////
	// 달력
	public static void claView(int str, int str1) {
		
Calendar cal = Calendar.getInstance(); // 객체생성 (인스턴스 생성)
		
		
		
		int year = str; // 2020
		 
		int month = str1-1;  
			
		
		
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
		
	
	
	
	/////////////////////////////////////
	//콤마
	public static String currency(int value) {
		
		String r1 = Integer.toString(value);
		int a = r1.length()%3;
		String r2 = "";
		for(int i=0; i<a; i++) {
			String b = r1.substring(i,i+1);
			r2 += b;
		}
		int cnt = 0;
		for(int i=a; i<r1.length(); i++) {
			if(cnt%3 == 0 &&i>0) {
				r2+= ",";
				
			}
			String b = r1.substring(i,i+1);
			r2 +=b;
			cnt++;
			
		}
		return r2;

	}
	
	
	///////////////////////////////////
	//디데이 
	public static int diffDate(String date1,String date2) {
        
		int result = 0;

		Calendar cal = Calendar.getInstance();
		
		    String[] arr1 = date1.split("-");
	        String[] arr2 = date2.split("-");
	        
	        int y = Integer.parseInt(arr1[0]);
	        int m = Integer.parseInt(arr1[1]);
	        int d = Integer.parseInt(arr1[2]);
	        cal.set(y, m-1, d);
	        long u1 = cal.getTimeInMillis()/1000;
	        
	        
	         y = Integer.parseInt(arr2[0]);
	         m = Integer.parseInt(arr2[1]);
	         d = Integer.parseInt(arr2[2]);
	        
	        cal.set(y, m-1, d);
	        long u2 = cal.getTimeInMillis()/1000;
	        
	        long uTime = u2 -u1;
	        result = (int) uTime/(60*60*24);
        

		return result;
		
	}

	////////////////////////////////
	//디데이 
	public static int doomDay(String date) { 
		
		int result = 0;
		
		String[] dArray =date.split("-");
			  
        int y = Integer.parseInt(dArray[0]);
        int m = Integer.parseInt(dArray[1]);
        int d = Integer.parseInt(dArray[2]);
        
        Calendar cal = Calendar.getInstance();
        
        long sTime = cal.getTimeInMillis()/1000;
        cal.set(y, m-1, d);
        long eTime = cal.getTimeInMillis()/1000;
        long rTime = eTime - sTime;
        //60*60*24 하루 
        result = (int)rTime/(60*60*24);
        

		return result;
	}
	
	

}
