package study6;

public class Books1004 {

	int price = 1000;
	String bookName;
	
	public Books1004(String name) {
		this.bookName = name;
	}
	public Books1004(String name, int money ) {
		this.bookName = name;
		this.price = money;
	
	}
	
	public static void main(String[] args) {
		
		Books1004 java = new Books1004("자바의 첫걸음");
		Books1004 linux = new Books1004("리눅스 마스터",35000);
		System.out.println("my book: "+ java.bookName+",가격: "+java.price);
		System.out.println("your book: "+ linux.bookName+",가격: "+linux.price);

	}

}
