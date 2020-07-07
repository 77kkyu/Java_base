package study7;

class Program1 {
	public void pgName() {
		System.out.println("JAVA");
	}
}

class Program2 extends Program1{
	public void pgName() {
		System.out.println("jSp");
	}
	public void programAll() {
		super.pgName(); // super 부모클래스의 메소드
		this.pgName();  
	}
}

public class SuperThisExam {

	public static void main(String[] args) {
		
		Program1 a = new Program1();
		Program1 b = new Program2();
	//참조클래스 b = 객체생성 주소값 
		a.pgName(); // java
		b.pgName(); // jsp
		//b.programAll(); //java jsp
       
	}

}
