package study4;

public class MathMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int a = 90;
		int b = 80;
		System.out.println(Math.max(a, b));
		System.out.println(Math.min(a,b));
		
		float avg = 86.67f;
		System.out.println(Math.ceil(avg)); //87.0
		System.out.println(Math.floor(avg)); //86.0
		
		System.out.println("50.677의 round 적용:"+Math.round(50.677));//51
		
		double p1 = Math.PI;
		float p2= (float) Math.PI;
		System.out.println(p1);// 3.141592~~
		System.out.println(p2);// 3.145927
		double aa = 1.4999;
		
		System.out.println("rint: "+Math.rint(aa)); // rint: 3.0 반올림 내림 
		System.out.println("round: "+Math.round(p1)); // round : 3 
		System.out.println("ceil: "+Math.ceil(p1)); // ceil: 4.0
		System.out.println("floor: "+Math.floor(p1));// floor: 3.0
		System.out.println("sqrt: "+Math.sqrt(p1));// sqrt: 1.77245385~~~
		System.out.println("pow: "+Math.pow(2, 4));// pow: 100 제곱함수
		
		double nansu1 = Math.random(); //0 < (난수) < 1
		System.out.println("random: "+nansu1);
		int nansu2 = (int) (Math.random()*100); // 0~100사이 난수출력 
		System.out.println("random*100: "+ nansu2);//0 <= x <100
		
		// 1~100
		System.out.println((int)(Math.random()*100)+1);
		System.out.println();
		// 1~45
		for(int i=0; i<6; i++) {
		System.out.print((int)(Math.random()*45)+1);
		System.out.print(" ");
		
		}
		
		double a1 = 1.23232323232;  
		float b1 = 1.23232f;
		
		float c1 =(float) aa; //더블 플롯으로 바꾸기
		double d1 = b1;     //플롯 더블로 바꾸기 
		
		
		
		
	}

}
