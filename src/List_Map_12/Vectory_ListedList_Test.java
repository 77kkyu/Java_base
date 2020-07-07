package List_Map_12;

import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
//백터,린크드리스트 
public class Vectory_ListedList_Test {

	public static void main(String[] args) {
		
		List<String> vector1 = new Vector<String>();
		
		vector1.add("103");
		vector1.add("105");
		vector1.add("101");
		System.out.println(vector1);
		System.out.println(vector1.get(0));
		System.out.println(vector1.get(1));
		System.out.println(vector1.get(2));
		
		System.out.println("========================================");
	//참조클래스<데이터타입> 참조변수 = new 생성자; 	
		List<Integer> linkedList1 = new LinkedList<Integer>();
		linkedList1.add(103);
		linkedList1.add(105);
		linkedList1.add(101);
		System.out.println(linkedList1);
		System.out.println(linkedList1.get(0));
		System.out.println(linkedList1.get(1));
		System.out.println(linkedList1.get(2));
		
	}

}
