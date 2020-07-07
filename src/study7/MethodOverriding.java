package study7;

// 오버라이딩 - 부모클래스의 메소드를 자식클래스가 똑같은 이름으로
//              재정의 가능 / 덮씌우기  
//    객체지향 *다향성*

class JavaView{ //부모클래스
	public void viewName() {
		System.out.println("자바 프로젝트");
	}
	public String viewSeoul() {
		return "강남";
	}
}

//////////////////////////////////////////////////////

class OracleView extends JavaView{ // 자식클래스 
	public void viewName() { //javaView 부모클래스의 메소드(상속) 사용 재정의 가능
		System.out.println("오라클 프로젝트");
	}
	public String viewBusan() {
		return "Busan";
	}
}

////////////////////////////////////////////////////

public class MethodOverriding {

	public static void main(String[] args) {
		JavaView a = new JavaView();
		OracleView b = new OracleView();
		
		a.viewName(); //자바 프로젝트
		b.viewName(); //오라클 프로젝트
		

	}

}
