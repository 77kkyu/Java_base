package study6;

class Person1{
	int age;       //접근지정자가 없음
	public String name; // 접근 허용
	protected int height; 
	private int weight; // 접근제한
	
	public void setWeight(int weight) {
		this.weight = weight;
		
//		if(weight >200) {     중요한 변수 
//		weight = 200;
//	}
	}
	public int getWeight() {

		return weight;
	}
}


public class Student11 extends Person1 {
	
	void set() {
		age = 30;
		name = "홍길동";
		height = 175;
		setWeight(99); //자식 클래스에서 몸무게를 접근 제한해서 생성자로 우회
	}

	public static void main(String[] args) {
		
		Student11 s = new Student11();
		s.set();
		//setWeight(99); error
		System.out.println("나이:"+s.age+"\n이름:"
		+s.name+"\n키:"+s.height+"\n몸무게:"+s.getWeight());
		                                     //메소드로 우회해서 출력

	}

}
