package study7;

class Test2{
	//접근권한                             ((캡슐화))
	public int a;
	protected int b;
	int c;
	private int d; // get set 메소드로 우회 
	
	public int getD(){
		return d;
		
	}
	public void setD(int d) {
		
		if(d<0 || d>100) {
			d=0;
		
		}
		this.d = d; 
		// private d 객체  = 매개변수 
	}
}

public class Test extends Test2 { //                   ((상속화))
	
	int n;
	
	public Test() { // 생정자:  (1)객체화가 이뤄질때 자동실행되는 메소드
		System.out.println("생성자"); //(2)클래스이름과 동일한 이름
	}                                 //(3)호출불가 
	
	public Test(int m) { //매개변수의 개수와 종류에 따라 구분 
		this.n = m;
	}                       //                    ((다형성!!)) 객체지향언어특징 
                                         
	public static void main(String[] args) {
	//참조클래스 참조변수 = new 생성자	
		Test t = new Test(); //객체생성
		Test q = new Test(100);
		
		
		t.a = 10;
		t.b = 11;
		t.c = 12;
		t.setD(101);
		//t.d = 13; 불가능 private 접근권한 
		System.out.println(t.a+","+t.getD());
		
		
		
	}

}
