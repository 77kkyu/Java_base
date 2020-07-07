package Thread_11;

public class ThreadTest3 extends Thread {

	public void run() {
		for(int i=1; i<=10; i++) {
			System.out.print("+");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		
		ThreadTest3 t = new ThreadTest3();
		t.start();
		
		for(int i=1; i<=10; i++) {
			System.out.print("*");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				
				e.printStackTrace();
			}
		}
		

	}

}
