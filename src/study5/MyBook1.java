package study5;

class BookInfo{
	
	int price = 10000; //***멤버변수*** 인스턴스(객체) 변수 
    static String bookTitle = "JAVA 기초"; //***멤버변수*** 
    //전역변수 or 클래스변수 (같이 변경가능)
                                            
	
    //static은 공유영역에 올라감  다 같이 변경됨 재정의 x 
    //static을 빼면 재정의 o 
    
	public static void message() {
		System.out.println("[책 정보]");
	}
	
	public static void discount() {	
		System.out.println("30% 할인");
	}
}

public class MyBook1 {

	public static void main(String[] args) {
		System.out.println("-My Book-");
		
		BookInfo bookInfo1 = new BookInfo();
		BookInfo bookInfo2 = new BookInfo();
		
		bookInfo2.bookTitle = "오라클";
		bookInfo2.price = 20000;
		
		System.out.println(bookInfo1.bookTitle);
		System.out.println(bookInfo1.price);
		
		System.out.println(bookInfo2.bookTitle);
		System.out.println(bookInfo2.price);
		
		
		

	}

}
