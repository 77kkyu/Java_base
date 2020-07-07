package study1;

public class Test2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int age1 = 10;
		System.out.println(age1);
		
		age1 = age1 +1;      // = : 넘김(우값 -> 좌)
		System.out.println(age1);
		
		age1 = age1+1;
		System.out.println(age1);
		
		age1 = age1+1;
		System.out.println(age1);
		
		int myMoney = 1000;
		
		myMoney = myMoney + 100;
		myMoney = myMoney + 50;
		myMoney = myMoney - 30;
		System.out.println(myMoney);
		System.out.println("");
		
		int TomsMoney = 100;
		int day1 = 20;
//		TomsMoney = TomsMoney + day1;
		TomsMoney += day1; // 누적(증감)
		
		int day2 = 30;
//		TomsMoney = TomsMoney + day2;
		TomsMoney += day2;
		
		int day3 = -10;
//		TomsMoney = TomsMoney + day3;
		TomsMoney += day3; // 누적(가감)
		System.out.println("Tom의 총금액은 " + TomsMoney + "만원입니다");
		System.out.println("평균수입은 "+(day1+day2+day3)/3 + "만원입니다");
		
		int number = 20;
		
		number += 1;
		System.out.println(number);
		
		number += 5;
		System.out.println(number);
		
		number -= 4;
		System.out.println(number);
		
		number *= 2;
		System.out.println(number);
		
	}

}
