package study6;

public class ConstBasic {
	
	public void hap() {
		System.out.println("aaaaaa");
	}
	
	public void ConstBasic() { 
		//생성자특징
		//1..객체생성 시 자동 실행
		//2..클래스명과 동일한 이름 
		System.out.println("Hello");
	}
	
	public void ConstBasic(String str) {//같은 이름이여도 매개변수로 차이를 둘수있음 
		//생성자특징                    // 오버로딩
		//1..객체생성 시 자동 실행
		//2..클래스명과 동일한 이름 
		System.out.println("Hello");
	}
	
	public void ConstBasic(int ads) { //매개변수타입이 달라야함 
		//생성자특징                  //타입이 타입이 같아도 타입변수이름이 다르면 
		//1..객체생성 시 자동 실행    // 안됨 
		//2..클래스명과 동일한 이름 
		System.out.println("Hello");
	}

	public static void main(String[] args) {
       		
		ConstBasic aa = new ConstBasic();
		
	
	}

}
