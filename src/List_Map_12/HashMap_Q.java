package List_Map_12;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HashMap_Q {

	public static void main(String[] args) {
	
	System.out.println("===========1번==========");	
	
		Map<String,Integer> map = new HashMap<String,Integer>();
		
		map.put("영어", 100);
		map.put("국어", 80);
		map.put("수학", 90);
		int hap =0;
		int avg =0;
		Iterator<String> keys = map.keySet().iterator();
		while(keys.hasNext()) {
			hap += map.get(keys.next());
		}
		avg = hap/map.size();
			
		System.out.println("(1)총점:"+hap);
		System.out.println("(2)평균:"+avg);
		
		System.out.println("===========2번==========");
		
		Map<String,Integer> map1 = new HashMap<String,Integer>();
		
		map1.put("영어", 50);
		map1.put("국어", 40);
		map1.put("수학", 70);
		int hap1 = 0;
		int avg1= 0;
		String str = "";
		Iterator<String> keys1 = map1.keySet().iterator();
		while(keys1.hasNext()) {
			String key = keys1.next();
		    hap1 += map1.get(key);
		    if(map1.get(key)<60) {
		    	str += key+",";
		    }
		}
		double avg11 = (double)hap1/map1.size();
		double avg111 = (double)Math.floor(avg11*10)/10;
		//or 결과만 원하면 섭스트링으로 결과만 가져오기
		//String[] a1 = (""+avg).Split("\\.");
		//String a2 = a[0]+"."+a1[1].substring(0,2);
		
		if(str.length()>0) {
			str = str.substring(0,str.length()-1);
		}else {
			str = "없음";
		}
		
		
		
		
		
		//double a1 = (double)Math.floor(a2*10)/10;
		System.out.println("총점 :"+hap1);
		System.out.println("평균 :"+avg111);
		System.out.println("낙제과목 :"+str);
		
		System.out.println("===========3번==========");
		
		Map<String,String> map2 = new HashMap<String,String>();
		
		map2.put("이름", "홍길동");
		map2.put("영어", "90");
		map2.put("국어", "10");
		map2.put("수학", "70");
		
		Iterator<String> keys2 = map2.keySet().iterator();
		
		int hap2 =0;
		int avg2 =0;
      
		while(keys2.hasNext()) {
			String key2 = keys2.next(); // 실제 key 값 (이름,영어,국어,수학)
			if(!key2.equals("이름")) {
				if(key2.equals("국어")) 
					map2.put("국어", "80");
				hap2 += Integer.parseInt(map2.get(key2));
				
			}
	
		}
		avg2 = hap2 /(map2.size()-1);
		System.out.println("총점 :"+hap2);
		System.out.println("평균 :"+avg2);
		
		System.out.println("===========4번==========");
		
		List<String> list1 = new ArrayList<String>();
		list1.add("50");
		list1.add("60");
		list1.add("70");
		
		int hap3 =0;
		int avg3 =0;
		for(int i=0; i<list1.size(); i++) {
			hap3 += Integer.parseInt(list1.get(i));
			
		}
		avg3 = hap3/list1.size();
		System.out.println("총점 :"+hap3);
		System.out.println("평균 :"+avg3);
	}

}
