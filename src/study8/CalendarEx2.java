package study8;

import java.util.Calendar;

public class CalendarEx2 {
	
	public static int diffDate(String date1,String date2) {
                
		int result = 0;

		Calendar cal = Calendar.getInstance();
		
		    String[] arr1 = date1.split("-");
	        String[] arr2 = date2.split("-");
	        
	        int y = Integer.parseInt(arr1[0]);
	        int m = Integer.parseInt(arr1[1]);
	        int d = Integer.parseInt(arr1[2]);
	        cal.set(y, m-1, d);
	        long u1 = cal.getTimeInMillis();
	        
	        
	         y = Integer.parseInt(arr2[0]);
	         m = Integer.parseInt(arr2[1]);
	         d = Integer.parseInt(arr2[2]);
	        
	        cal.set(y, m-1, d);
	        long u2 = cal.getTimeInMillis()/1000;
	        
	        long uTime = u2 -u1;
	        result = (int) uTime/(60*60*24);
        

		return result;
		
	}

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
	
	public static void main(String[] args) {
		
		int dDay = doomDay("2020-12-25");
	    
		
		System.out.println(dDay+"일 남았습니다");
		

	}

}
