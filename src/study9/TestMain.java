package study9;
/////8      get set 사용하기
class TestVO1{
	// 접근지정자 (캡슐화)
	private int a; //멤버변수

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}
	
}

public class TestMain {
	
	public static void main(String[] args) {
		
		 TestVO1 vo = new TestVO1();
		 
		 vo.setA(90);
		 System.out.println(vo.getA());

	}

}
