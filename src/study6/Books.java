package study6;

public class Books {
	String bookName = "JSP";
	
	public Books() {
		System.out.println("한빛미디어");
	}
	
	public Books(String bookName) {
		this.bookName = bookName;
		//this = 현재객체
	}

	public static void main(String[] args) {
		
		Books myBook = new Books(); // 메소드 한빛미디어 // jsp
		Books yourBook = new Books("java"); //생성자 // java
		Books Book12 = new Books("오라클");
//		yourBook.bookName = "오라클";
		System.out.println(myBook.bookName);
		System.out.println(yourBook.bookName);
		System.out.println(Book12.bookName);

	}

}
