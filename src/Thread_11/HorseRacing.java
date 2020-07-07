package Thread_11;

class Player extends Thread{
	int num;
	HorseRacing hr = null;
	public Player(int num,HorseRacing hr) throws Exception{
		this.num = num;
		this.hr = hr;  // this.hr = new Player();
				System.out.println(num+"번 말 입장!!");
				Thread.sleep(300);
	}
	
	public void run() {
		int speed = 0;
		while(speed <500) {
			speed += 5;
			try { 
				
				Thread.sleep(10);
				
			}catch(Exception e) {
				
			}
		}
		hr.ArrivalPlayer(num);
	}
}

public class HorseRacing {
	
	int count =0;
	Player p1,p2,p3,p4,p5,p6;
	
	public HorseRacing() throws Exception{
		System.out.println("=============잠시 후 경기가 시작됩니다===========");
		Thread.sleep(500);
		
	    p1 = new Player(1,this);
		p2 = new Player(2,this);
		p3 = new Player(3,this);
		p4 = new Player(4,this);
		p5 = new Player(5,this);
		p6 = new Player(6,this);
		System.out.println("<<경기 시작>>");
		p1.start();
		p2.start();
		p3.start();
		p4.start();
		p5.start();
		p6.start();
		
		
	}

	public static void main(String[] args) throws Exception {
		HorseRacing h = new HorseRacing();
		

	}
	public void ArrivalPlayer(int num) {
		System.out.println(num+"번 말 도착!!");
	}

}
