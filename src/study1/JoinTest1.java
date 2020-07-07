package study1;

public class JoinTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String firstName = "길동";
		System.out.println(firstName);
		
		System.out.println("홍"+ firstName);
		System.out.println("김"+     firstName);
		System.out.println(" ");
		
		String lastName = "갓";
		System.out.println(lastName + firstName);
		System.out.println("");
		
		//사과의 가격은 500원 입니다
		
		String fruit = "사과";
		int price = 500;		
		System.out.println(fruit+"의 "+"가격은"+price+"원 입니다");
		
		//영어 90 수학 100 평균 95
		
		int eng = 90;
		int math = 100;
		System.out.println("영어"+"("+eng+")"+" "+"수학"+"("+math+")"+" "+"평균"+"("+(eng+math)/2+")");
		System.out.println("");
		
		int code1 = 2500;
		int code2 = 700;
		int code3 = 5500;
		
		System.out.println("한우리마트 이용 내역");
		System.out.println("---------------------");
		System.out.println("    우유 : "+ code1);
		System.out.println("    과자 : "+ code2);
		System.out.println("    과일 : "+ code3 );
		System.out.println("---------------------");
		System.out.println("    합계 : "+ (code1+code2+code3)+"원");
		
	}

}
