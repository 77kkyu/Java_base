package study6;

public class Car1 {
	static int speed = 100;
	static String carName;
	public static void speedUp() {
		speed++;
	}
public static void speedDown() {
	speed--;
	if(speed<0) {
		stop();
	}
}
public static void stop() {
	speed= 0;
}
	public static void main(String[] args) {
		
		Car1.speedUp();
		Car1.speedUp();
		Car1.carName = "sonata";
		
		System.out.println(Car1.carName+"의 속도는 "+Car1.speed);
		
	}

}
