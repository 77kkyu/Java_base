package study4;

public class Buffer1 {

	//메소드 생성
	static double roundA(double a,int b) {
		
		
		// 3.1715 * 10 -> floor(31.715) ->3.1 -> 31/10
		// 소수점 1자리 x10 
		// 소수점 2자리 x100
		double a1 = Math.floor(a*Math.pow(10,b)) / 10; 
		
		//double a1 = Math.floor(a*10)/10;
		//double a1 = Math.floor(a*100)/100;
		//double a1 = Math.floor(a*1000)/1000;
		
		return a1;
		

	}
	
	public static void main(String[] args) {
	  
//		double ab = 3.1715;
//		System.out.println(ab); // 3.1715
//        System.out.println(roundA(ab,1)); // 3.1
//        System.out.println(roundA(ab,2)); // 31.7
//        System.out.println(roundA(ab,3)); // 317.1
//        System.out.println(roundA(ab,4)); // 3171.5
//        System.out.println(roundA(ab,5)); // 31715.0
//        System.out.println(roundA(ab,6)); // 317150.0
		
//		String a = "100";    
//		int result = Integer.parseInt(a) + 80;  //문자를 숫자로 형변환 
//		System.out.println(result);
//		
//		int b = 3032;                      
//		System.out.println(Integer.toString(b).length());  //숫자를 문자로 형변환
		
//		
//		StringBuffer b = new StringBuffer("java"); //스트링버퍼 문자 
//		System.out.println(b);
//		b.append(" language"); // append 문자 추가 
//		System.out.println(b);
//		b.insert(5, "program ");
//		System.out.println(b);
//		b.replace(0, 4, "oracle");
//		System.out.println(b);
//		
//		System.out.println(b.substring(0,4));
      
	}

}
