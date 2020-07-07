package study2;

import java.util.Scanner;

public class If {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
//		System.out.println("국어점수를 입력해주세요");
//		
//		int kor = scan.nextInt();
//		
//		System.out.println("영어점수를 입력해주세요");
//		
//		int eng = scan.nextInt();
//		
//		if(kor >= 60 ) {
//			
//			if(eng >= 60) {
//				System.out.println("합격");
//			}
//		}else 
//		{
//			System.out.println("불합격");
//		}
		
		int kor = 59;
		int eng = 60;
		
		if(kor>=60 && eng >=60) {
			System.out.println("합격");	
		}else if(kor<60 && eng>=60 || kor >=60 && eng <60) {
			System.out.println("재시험");
		}else if(kor<60 && eng <60) {
			System.out.println("불합격");
		}
      
	}

}
