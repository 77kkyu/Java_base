package study8;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class ClaendarEx3 {

	public static void main(String[] args) {
		
		Calendar cal = Calendar.getInstance();
		
		////  년도 달 월 시간 분 초 출력하기 
		SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		System.out.println(form.format(cal.getTimeInMillis()));
		
		
		
		
		////////////////////////////////////////////
		
		BigInteger unixTime = new BigInteger("1498137807001"); //큰 수치를 담을수있다.
		
		cal.setTimeInMillis(unixTime.longValue()); // 롱타입으로 세팅
		
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH)+1;
		int d = cal.get(Calendar.DATE);
		System.out.println(y +"/"+ m +"/"+d);
		
		
		long aa = unixTime.longValue()+(60*60*24*1000*20);  //20일 후 
		
		
		
		
		
        cal.setTimeInMillis(aa); // 롱타입으로 세팅
		
		 y = cal.get(Calendar.YEAR);
		 m = cal.get(Calendar.MONTH)+1;
		 d = cal.get(Calendar.DATE);
		System.out.println(y +"/"+ m +"/"+d);

////////////////////////////////////////////////////
		
		cal.add(Calendar.DATE,60);       //60 일후 
		 y = cal.get(Calendar.YEAR);
		 m = cal.get(Calendar.MONTH)+1;
		 d = cal.get(Calendar.DATE);
		System.out.println(y +"/"+ m +"/"+d);
		
		

	}

}
