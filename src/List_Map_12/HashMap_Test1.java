package List_Map_12;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HashMap_Test1 {

	public static void main(String[] args) {
		
		
		String[] array = {"11","22","33"};
		System.out.println(array);
		
		System.out.println("=============================");
		
		List<String> list1 = new ArrayList<String>();
		list1.add("11");
		list1.add("22");
		list1.add("33");
		
		System.out.println(list1);
		System.out.println(list1.get(0));
		
		System.out.println("=============================");
		
		Map<Integer, String> map1 = new HashMap<Integer, String>();
		    //   "key","value"
		map1.put(12, "첫 게시글"); //객체 넣기
		map1.put(99, "1234");
		map1.put(77, "홍길동");
		
	        //hashMap은 반복문 쓸라면 다른방법으로 써야함 	
		
//		System.out.println(map1.get(12));
//		System.out.println(map1.get(99));
//		System.out.println(map1.get(77));
		
		System.out.println(map1.keySet()); //keyset = key값 리턴
		
		//Iterator : HashMap 반복문 사용가능 
		Iterator<Integer> keys = map1.keySet().iterator();

		while( keys.hasNext()) {  // 존재유무
			int key = keys.next(); //내용물 받기  	
			System.out.println(map1.get(key));
		}
		
		System.out.println("=============================");
		
		
		
		
	}

}
