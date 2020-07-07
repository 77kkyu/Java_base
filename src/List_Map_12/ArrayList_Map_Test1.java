package List_Map_12;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ArrayList_Map_Test1 {

	private static final String HashMap = null;

	public static void main(String[] args) {
		
		
		List<Map> list1 = new ArrayList<Map>(); // 객체화
		Map<String, String> map1 = new HashMap<String, String>();
		
		map1.put("a1", "90");
		map1.put("a2", "80");
		map1.put("a3", "84");
		list1.add(map1);
		
		map1 = new HashMap<String,String>(); //새로운 map객체 생성후 넣어주기
		map1.put("a1", "70");
		map1.put("a2", "100");
		map1.put("a3", "60");
		list1.add(map1);
		
//		System.out.println(list1); 
//		System.out.println(list1.size()); //리스트입장에서는 1 		
//		System.out.println(list1.get(0)); //리스트안에 1개이기 때문 인덱스0번
//		System.out.println(list1.get(1));
//		System.out.println(list1.get(0).size()); //리스트안에있는 map1 개수 3 
//		System.out.println(list1.get(0).get("a2"));//리스트안에 a2값 출력 
		                                    //키로 출력    인덱스x 
		
		for(int i=0; i<list1.size(); i++) {
			System.out.println((i+1)+"행:"+list1.get(i));
		}
	
		System.out.println("===============================");
		
		for(int b=0; b<list1.size(); b++) {
			Iterator<String> keys = map1.keySet().iterator();
            
			while(keys.hasNext()) {
				String key = keys.next();
				System.out.println(key+":"+list1.get(b).get(key));
			}

		}
		
		System.out.println("==================================");
		
		for(int b=0; b<list1.size(); b++) {
		    HashMap map = (HashMap)list1.get(b);
		 
		    Iterator<String> keys = map.keySet().iterator();
		    while (keys.hasNext()) {
		    	String key = keys.next();
		    	String value = (String)map.get(key);
		    	System.out.println(key+":"+value);
		    	
		    }
		    
		}
		
		
	}

}
