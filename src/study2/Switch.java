package study2;

import java.util.Scanner;

public class Switch {

	public static void main(String[] args) {
		
//		switch(1+1) {
//		case 1: System.out.println("답 1");
//		break;
//		case 2: System.out.println("답 2");
//		break;
//		case 3: System.out.println("답 3");
//		break;
//		default : System.out.println("모름");
//		}

		Scanner scan = new Scanner(System.in);
		
		
		System.out.println("1:라면   2:떡볶이   3:튀김");
		int myMenu = scan.nextInt();
		String food = "";
		System.out.println("돈을 지불하세요");
		int price = scan.nextInt();
		
		switch(myMenu) {
		case 1: food = "라면";
		        price = 2500;
		break;
		case 2: food = "떡볶이";
		        price = 3000;
		        break;
		case 3: food = "튀김";
		        price = 2000;
		        break;
		}
		System.out.println("메뉴 :" + food + "입니다");
	    System.out.println("가격 :" + price + "입니다");
		
	}

}
