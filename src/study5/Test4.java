package study5;

public class Test4 {

	public static void main(String[] args) {
		
		mySum1(100,50);
		System.out.println(mySum2(60,70)); 
        System.out.println(myDiv(130,77));
        System.out.println(message("하하하"));
//        System.out.println(Math.max(50, 60));
//        System.out.println(myMax(50, 60, 30));
         int[] data = {30,50,80};
         System.out.println(myHap(data));
        
        
	}

	public static void mySum1(int a, int b) {
		System.out.println(a+b);
	}
	
	public static int mySum2(int a, int b) { //리턴은 void를 빼고 리턴되는 타입입력
		int result = a+b;
		return result; //실행한 곳에 값을 던진다 
	}
	
	public static double myDiv(int a, int b) { // 더블타입 리턴 
		double result = a / b;
		return result;
	}
	
	public static String message(String a) { // 스트링타입 리턴
		
		String result = a + "안녕하세요";
		
		return result;
	}
	
//	public static int myMax(int a, int b, int c) {
//		
//		int result = 0;
//
//		if((a>b && b>c) || (a<b && b<c)){
//			
//			result =  a;	
//		}else if((a<b && b<c)){
//			result =  b;
//		}else if(a<b && b<c) {
//			result =  c;
//		}else {
//			result = a;
//		}
//		return result;
//		
//	}
	
	public static int myHap(int[] data) {
		int result = 0;
		
//		result = data[0]+data[1]+data[3];
//		                            같은 표현 
//		result += data[0];
//		result += data[1];
//		result += data[2];
		
		for(int i=0; i<data.length; i++) {
			result += data[i];
		}
		
		return result;
	}
}
