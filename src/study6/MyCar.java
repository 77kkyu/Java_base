package study6;

public class MyCar {
	int maxSpeed;
	String carName;
	String carColor;
	
	public void maxSpeedUpdate(int speed) {
		
		this.maxSpeed += speed;
  // this.maxSpeed = this.maxSpeed + speed; 
		
	}
	public MyCar(String carName, int maxSpeed) {
		this.maxSpeed = maxSpeed;
		this.carName = carName;
		
	}
	
	public MyCar(String carName, int maxSpeed, String carColor) {
		this.maxSpeed = maxSpeed;
		this.carName = carName;
		this.carColor = carColor;
	}
	

	public static void main(String[] args) {
		
		MyCar car1 = new MyCar("소나타",230);
		MyCar car2 = new MyCar("그랜저",300,"white");
		
		System.out.println(car1.carName + ":"+car1.maxSpeed);
		System.out.println(car2.carName + ":"+car2.maxSpeed);
		
		car1.maxSpeedUpdate(-20);
		System.out.println(car1.carName+":"+car1.maxSpeed);
		
		
	}

}
