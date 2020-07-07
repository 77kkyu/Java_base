package List_Map_12;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.swing.JList;

public class ArrayList_Map_Test2 {

	public static void main(String[] args) {
		
		List<Map> list = new ArrayList<Map>();
		Map<String,String> board = new HashMap<String,String>();
		
		board.put("no","1");
		board.put("hit","35");
		board.put("rdate","2017-05-01");
		board.put("name","홍길동");
		board.put("title","첫글");
		list.add(board);
		
		board = new HashMap<String,String>();
		board.put("no","2");
		board.put("hit","3");
		board.put("rdate","2017-05-05");
		board.put("name","제임스");
		board.put("title","둘째글");
		list.add(board);
		
		System.out.println("=========q1==========");
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
		}
         
		/////////////////////////////////
		System.out.println("=========q2==========");
		for(int a=0; a<list.size(); a++) {		
				  String aa = (String) list.get(a).get("rdate");
				  aa = aa.replace("-", "");
				  list.get(a).put("rdate", aa);
			
			System.out.println(list.get(a));
		}
		/////////////////////////////////
		System.out.println("=========q3==========");
		
		for(int b=0; b<list.size(); b++) {
			String bb = (String)list.get(b).get("hit");
			int bb1=Integer.parseInt(bb)+100;
			String bb2 = Integer.toString(bb1);
			list.get(b).put("hit", bb2);
		    System.out.println(list.get(b));
		   
			
		}
		/////////////////////////////////////
		System.out.println("=========q4==========");
		int hap = 0;
		int avg = 0;
		for(int z=0; z<list.size(); z++) {
			
			   String zz = (String)list.get(z).get("hit");
			   hap +=  Integer.parseInt(zz);

		}
		avg = hap/list.size();
		System.out.println(hap+"  "+avg);
     //////////////////////////////////////////
		List<Map> sList = new ArrayList<Map>();
		Map<String,String> jMap = new HashMap<String,String>();
		
		jMap.put("name", "홍길동");
		jMap.put("kor", "88");
		jMap.put("eng", "75");
		sList.add(jMap);
		
		jMap = new HashMap<String,String>();
		jMap.put("name", "김철수");
		jMap.put("kor", "56");
		jMap.put("eng", "62");
		sList.add(jMap);
		
		jMap = new HashMap<String,String>();
		jMap.put("name", "김영희");
		jMap.put("kor", "98");
		jMap.put("eng", "100");
		sList.add(jMap);
		
		////////////////////1q 홍길동 총합, 김철수 총합, 김영희 총합
		
		
		
		for(int q=0; q<sList.size(); q++) {
		
			String name = (String) sList.get(q).get("name");
			String kor = (String) sList.get(q).get("kor");
			String eng = (String) sList.get(q).get("eng");
			int hap1 = Integer.parseInt(kor)+Integer.parseInt(eng);
			System.out.println(name+"총합"+hap1);
		}
		
		/////////////////////
		
		int khap =0;
		int ehap =0;
		for(int m=0; m<sList.size(); m++) {
			String kor = (String) sList.get(m).get("kor");
			String eng = (String) sList.get(m).get("eng");
			khap += Integer.parseInt(kor);
			ehap += Integer.parseInt(eng);
		}
		System.out.println("영어합게: "+ ehap);
		System.out.println("국어합게: "+ khap);
	}

}
