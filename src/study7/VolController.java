package study7;

public class VolController {

	public static void main(String[] args) {
		VolMake tv = new VolMake();
		VolMake radio = new VolMake();
		
		System.out.println("Tv 채널:"+tv.volLevel+"  "+"Radio 채널:"+radio.volLevel);
		tv.volUp(10);
		radio.volUp(30);
		tv.volDown(5);
		radio.volDown(20);
		System.out.println("Tv 채널:"+tv.volLevel+"  "+"Radio 채널:"+radio.volLevel);
	}

}
