package study7;

abstract class Sound{     // 추상클래스
	abstract void cry();  // 추상메소드 or 명세
}

class Cat extends Sound{  // 추상클래스를 상속받고 추상메소드를 강제적으로 재정의
	void cry() {
		System.out.println("냐옹냐옹!");
	}
}

class Dog extends Sound{
	void cry() {
		System.out.println("멍멍머으ㅡ!");
	}
}

public class Animal {

	public static void main(String[] args) {
		
		// Sound a = new Sound(); // erro 추상클래스는 객체를 생성 x 
		Cat cat = new Cat(); // 추상클래스를 상속받은 클래스 객체 생성
		Dog dog = new Dog();
		cat.cry();
		dog.cry();

	}

}
