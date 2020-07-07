package study6;

public class Car2 {
	private int velocity; // 속도
	String carName; //차이름
	
	void speedUp() {
		velocity++;
		
		}
	void speedDown() {
		velocity--;
		if(velocity<0) {
			stop();
		}
	}
	void stop() {
		velocity=0;
	}
	
	

	public static void main(String[] args) {
	
		Car2 ca2 = new Car2();
		Car2 ca3 = new Car2();
		
	ca2.velocity = 100;
	ca2.speedUp();
	ca2.speedUp();
	ca2.carName = "sonata";
	
	ca3.velocity = 80;
	ca3.speedUp();
	ca3.speedUp();
	ca3.carName = "banz";
	
	}

}
