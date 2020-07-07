package study5;

public class Test1 {
	
	

	public static void main(String[] args) {
		
	    System.out.println("== 중국식 메뉴 ==");
		chinaMenu(); // 메소드 호출 
		
		System.out.println("== 분식 메뉴 ==");
		bunsikMenu();

	}
	
	public static void chinaMenu() {
		System.out.println("1. 짜장면 - 4000원");
		System.out.println("2. 짬짜면 - 5000원");
		bunsikMenu(); //메소드에서 메소드 호출 가능 
	}
	
	public static void bunsikMenu() {
		System.out.println("1. 떡라면 - 3000원");
		System.out.println("2. 떡볶아 - 2500원");
	}

}
