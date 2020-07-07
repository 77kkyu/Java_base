package study7;

public class CarVolController {

	public static void main(String[] args) {
		
		CarVolMake carAudio = new CarVolMake();
		
		carAudio.volUp(30);
		System.out.println(carAudio.volLevel);
		carAudio.volDown(5);
		System.out.println(carAudio.volLevel);
		carAudio.volPause();
		System.out.println(carAudio.volLevel);
		carAudio.volResume();
		System.out.println(carAudio.volLevel);
		
		

	}

}
