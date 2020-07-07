package chang;


class Car {
	
    public	String color;
	
	public Car (String color) {
		this.color = color;
	}
	
	public void mycolor () { //객체를 생성시 메모리에 올라감 
		System.out.println(color);
	}
	
	static void speed() { // static = 바로 메모리에 올라감
		System.out.println("speed");
	}
	
}



public class Test {

	public static void main(String[] args) {
		
		Car car = new Car("red");
		
		car.mycolor();
		car.speed();
		
		Car.speed();
		
		

	}

}
