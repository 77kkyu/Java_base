package study9;

public class CharTest {

	public static void main(String[] args) {
		//////// 유니코드 ////////
		int a = 'a';
		int z = 'z';
		System.out.println(a+","+z);
		
		a++;
		z++;
		System.out.println(a+","+z);
        
		int h1 = '가';
		int h2 = '나';
		int h3 = '힣';
		System.out.println(h1+","+h2+","+h3);
		
		String str = null;
		int i = 0;
		//String a1 = Integer.toString(str); // null point Exception
		String b1 = String.valueOf(str); // no exception
		
		System.out.println(",,"+b1);

		
	}

}
