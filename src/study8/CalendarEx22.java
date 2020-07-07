package study8;

import com.Common;

public class CalendarEx22 {

	
	
	public static void main(String[] args) {
		String day = "2020-11-11";
	    int dday = Common.doomDay(day);
	    System.out.println(dday);
	    
	    String date1 = "2020-02-29";
	    String date2 = "2020-03-01";
	    int diff =Common.diffDate(date1, date2);
	    System.out.println(diff);
	    
	    Common.claView(2020, 3);
	    
	    System.out.println(Common.currency(1500000));
	}

}
