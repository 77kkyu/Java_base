package Thread_11;

public class ThreadTest1 extends Thread {

	public void run() {
		System.out.println("123");
	}
	
	public static void main(String[] args) {
		
		ThreadTest1 t = new ThreadTest1();
		t.run();
		t.start();
		
        
	}

}
