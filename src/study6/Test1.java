package study6;

public class Test1 {
	
	int eng; //멤버변수, 인스턴스(객체)
	int kor; //멤버변수, 인스턴스(객체)
	static String message; //멤버변수, 클래스변수(공유변수)
	public int hap() {
		int result = eng+kor; // 지역변수
		return result;
	}
	public void avg() {
		System.out.println(hap()/2);
	}
	public static void age(int a, int b) { //매개변수 
		int hap = a+b;
		int result = (a+b)/2;
		System.out.println(result);
	}
	
	public static void main(String[] args) {
		
	
		Test1.message = "==학생점수==";
//참조클래스 참조변수  =  생성자	
		Test1 kim = new Test1(); //인스턴스화
		
		Test1 hong = new Test1();
		
		kim.eng = 90;
		kim.kor = 88;
		hong.eng = 100;
		hong.kor = 98;
		
		System.out.println(kim.hap()); //리턴타입이기 때문
		kim.avg();// 리턴이 없어서 출력가능  // 객체를 통한 접근
		
		Test1.age(70, 80); // 클래스명을 통한 접근
		
	
		

	}

}
