package study5;

class TvControl{
	boolean power; // true or fales
	int channel;
	void power() {
		power =! power; 
	}
	void channelUp() {
		++channel;
	}
	void channelDown() {
		--channel;
	}
}

public class TvTest {

	public static void main(String[] args) {
		
		TvControl t = new TvControl();
		
		t.power = true;
		t.channel = 1;
		
		t.channelDown();
		System.out.println("power : "+t.power); //true
		System.out.println("channel: "+t.channel);//0
		
		t.channelUp();
		System.out.println("power : "+t.power); //true
		System.out.println("channel: "+t.channel); //1
		
		t.channelDown();
		System.out.println("power : "+t.power); //true
		System.out.println("channel: "+t.channel); //0
		
		t.power();
		System.out.println("power: "+t.power); //false
		

	}

}
