package study5;

public class Test5 {

	int b = 90;
	int c = 50;
	
	public static void main(String[] args) {
		
		int a = 10;
		System.out.println(a); // 10
		a= 20;
		System.out.println(a); // 20
		
		// Test5 = 참조클래스, t1 = 참조변수, new Test5() = 생성자
		Test5 t1 = new Test5();
		t1.b = 100;    // 값 재정의 
		System.out.println(t1.b); // 100
		
		Test5 t2 = new Test5(); //b라는 객체는 그대로  
		System.out.println(t2.b); // 90
        t2.b = 200; // 값 재정의
        
        System.out.println(t1.b); // 100
        System.out.println(t2.b); // 200
        
        System.out.println(t1.c); // 50
        System.out.println(t2.c); // 50
        t2.c = 1000;              // t2.c만 재정의 
        System.out.println(t1.c); // 50
        System.out.println(t2.c); // 1000
	}

}
