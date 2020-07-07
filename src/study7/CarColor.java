package study7;

class CarInfo{
	
	String CarName;
	int velocity;
	String carColor;
}

public class CarColor extends CarInfo{
//일반적인 메소드는 소문자처리 

	public CarColor(String c, String name, int speed) { //생성자
		this.CarName = name;
		this.velocity = speed;
		this.carColor = c;
	}
	
	public static void main(String[] args) {
		
		CarColor cc = new CarColor("White","Sonata",100);
		System.out.println(cc.CarName+":"+cc.velocity+":"+cc.carColor);

	}

}
