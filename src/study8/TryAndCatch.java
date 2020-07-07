package study8;

public class TryAndCatch {

	public static void main(String[] args) {
		
		/////// 연산관련 
		int a = 10; 
		int b = 0;
		
		//System.out.println(a/b); 실행시 에러 값이 안맞음 
		try {
			int result = a/b;
			System.out.println(result);
		}catch(Exception e) {
			System.out.println("잘못된 연산입니다");
		}
        
		/////// 배열관련
		
		int[] jumsu = {80,70,60};
	
		
		try {
			System.out.println(jumsu[3]);
			
		}catch(Exception e){
			System.out.println("없는 배열입니다");
		}
		
		
		/////// 예제 3
		System.out.println(1);
		System.out.println(2);
		try {
			System.out.println(3);
			System.out.println(0/0); //익셉션 에러
			System.out.println(4);   //출력안됨 
		}catch(Exception e) {
			System.out.println(5);
		}
		System.out.println(6);
		
		
		/////// 예제 4
		int n1 = 10;
		int n2 = 0;
		try {
			int result = n1/n2;
			System.out.println(result);
//		}catch(ArithmeticException e) {
//			System.out.println("zero error");    
		}catch(ArithmeticException e) {
			System.out.println("zero error");    
		}catch(Exception e){
			System.out.println(e.toString()); //e.getMessage
		}                                     //에러상황을 정확하게 출력
		System.out.println("1111");
		
		
		
		///////// 예제 5
		String[] pgName = {"JAVA","PHP","ASP"};
		int i = 0;
		while(i<5) {
			try {
				if(i==4) {
					System.out.println(i/0);
				}else {
					System.out.println(pgName[i]);
				}
			}catch(ArrayIndexOutOfBoundsException e) {
				System.out.println("array exception");
			}catch(ArithmeticException e) {
      			System.out.println("zero error11111111");    
			}catch(Exception e) {
				System.out.println("System error");
			}finally{
				System.out.println("finally777"); // 거의 안씀 
			}
			i++;
		}
		
		/////////// q1 
		
		String str = "abc";
		
		try {
			System.out.println(str.charAt(0));
			System.out.println(str.charAt(1));
			System.out.println(str.charAt(2));
			System.out.println(str.charAt(3));
		}catch(StringIndexOutOfBoundsException e ) {
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}

}
