package study5;

import java.util.Scanner;

public class Test2 {

	public static void main(String[] args) {
		
		 System.out.println("== 중국식 메뉴 ==");
			menu(1);
			
			System.out.println("== 분식 메뉴 ==");
            menu(2);
            
            int eng = 90;
            int kor = 88;
            mySum(eng,kor);
            myAvg(eng, kor);
            
            
           
//            Scanner scan = new Scanner(System.in);
//            System.out.println("넓이를 입력해주세요");
//            int number = scan.nextInt();
//            roomSize(number);
            
            int a = 35600;
            int b = 200;
            myCalcul(a,b,"-");
            
            
            
	}

	public static void menu(int gubun) { //매개변수  
		if(gubun == 1) {
			System.out.println("1. 짜장면 - 4000원");
			System.out.println("2. 짬짜면 - 5000원");

		}else if(gubun == 2) {
			System.out.println("1. 떡라면 - 3000원");
			System.out.println("2. 떡볶아 - 2500원");
		}
	}
	
	public static void mySum(int eng, int kor) {
		System.out.println(eng + kor);
	}
	public static void myAvg(int eng, int kor) {
	    System.out.println((eng+kor)/2);	
	}
	
	public static void roomSize(int size) {
		
		double result = size * 0.3025;
		
		System.out.println("입력하신 "+size+"는 "+Math.round(result)+"평 입니다");
		
	}
	
	public static void myCalcul(int a, int b, String c) {
		
		int result = 0;
		
		if(c.equals("+")) {// equals(" ") 문자열 비교 
			
			result = a+b;
			
		}else if(c.equals("-")) {
			
			result = a-b;
		}else if(c.equals("*")) {
			result = a*b;
		}else if(c.equals("/")) {
			result = a/b;
		}
		System.out.println(a+c+b+"="+result);
		
	}
	
}
