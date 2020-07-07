package List_Map_12;

import java.util.ArrayList;
import java.util.List;


public class ArrayListTest1 {

	public static void main(String[] args) {
		
		//참조클래스<데이터타입> 참조변수 = new 생성자; 	
		List<String> list1 = new ArrayList<String>();
		String[] b = {"aa","bb"};
		System.out.println(b.length); // length 변수
		
		String a = "50";
		a.length(); // length 메소드
         
		list1.add(a);  //객체 넣기
		list1.add("60");
		list1.add("70");
		System.out.println(list1);
		
		System.out.println(list1.get(0)); //50
		System.out.println(list1.get(1)); //60
		System.out.println(list1.get(2)); //70
		System.out.println("list1 저장된 객체 수: "+ list1.size());
		
		list1.remove(0);  // 객체삭제
		System.out.println("list1 저장된 객체 수: "+ list1.size());
		System.out.println(list1.get(0)); // 60 인덱스가 밀림 
		System.out.println(list1.get(1)); // 70 
		
		System.out.println("===================================");
		System.out.println("List3");
		
		List<String> list3 = new ArrayList<String>();
		list3.add(0, "10");  //객체 넣을때 인덱스 0번부터 순차적으로 
		list3.add(1, "20");   
		//list3.add(3, "30");  //인덱스 2번이 비워있어서 에러남 쓸라면 try문 이용..
		list3.add(2,"30");
	     
		System.out.println(list3.get(0));
		System.out.println(list3.get(1));
		System.out.println(list3.get(2));  
		
		for(int i=0; i<list3.size(); i++) {
			System.out.println(i+":"+list3.get(i));
		}
		
		
	
		

	}

}
