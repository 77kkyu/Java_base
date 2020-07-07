package study8;


import java.util.Calendar;
import java.util.Date;

// 캘린더클래스 - Unix Time

public class CalendarEx {

	
	
	public static void main(String[] args) {
		
		// Calendar 클래스의 객체화   get인스턴스 객체화    ㅎ하ㅏㅏㅏㅏ하하
		Calendar cal = Calendar.getInstance();
		
		
		// Unix Time은  1970,1,1 00:00:00초 부터 현재까지 초로 나타낸 시간
//		long unixTime = cal.getTimeInMillis(); 
		                               
//		cal.setTimeInMillis(unixTime-1900000000);
		
		//cal.set(2020, 11, 25); // 날짜 재정의 set 년월일을 숫자로 받아서 세팅
//		System.out.println(unixTime/1000+"초");
//        System.out.println(cal.get(Calendar.YEAR)); //상수! 
//        System.out.println(cal.get(Calendar.MONTH)+1); // 0~11     
//        System.out.println(cal.get(Calendar.DATE));
        
        long sTime = cal.getTimeInMillis()/1000;
        cal.set(2020, 1, 7);
        long eTime = cal.getTimeInMillis()/1000;
        long rTime = eTime - sTime;
        //60*60*24 하루 
        int result = (int)rTime/(60*60*24);
        System.out.println(result + "일 남았습니다 ");
        
        //////////////////////////////
        
       
        String d1 = "2020-06-01";
        String d2 = "2020-06-03";
        //d1, d2 -> 년월일 분리작업 -> split("-")
        //set(년,월,일); 세팅
        //해당 시점의 유닉스 시간을 얻어오기 
       
        String[] arr1 = d1.split("-");
        String[] arr2 = d2.split("-");
        
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
        int result1 = (int) uTime/(60*60*24);
        System.out.println(result1 + "일 남았습니다 ");
        
     
        
        
        Date a = new Date();
        System.out.println(a);
       
        
      
        
      
       
        
        
        
        
        
        

        
        
        
		
	}

}
