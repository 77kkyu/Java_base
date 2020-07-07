package study2;

public class Test1 {

	
	public static void main(String[] args) { 
		
//		String message = "안녕하세요"; //문자타입 변수
//		int a = 10; //숫자(정수) 타입 변수 
//		System.out.println(a/3); // 3 
//         byte b = 100;
//         short s = 32000;
//     
//		byte b1 = 127;
//		byte b2 = 130;
//		byte b3 = b1 +100;
//		byte b4 = -128;
//		System.out.println("byte : "+ b1 + "," + b4);
//		
//		short s1 = b1 + 100;
//		short s2 = 32767;
//		short s3 = 33000; 
//		short s4 = -32768;
//		System.out.println("short :" + s1 + "," + s4);
//		
//		int i1 = 33000; 
//		int i2 = 2100000000;
//		int i3 = 2200000000;
//		int i4 = -32768;
//		System.out.println("int : "+ i2);
//		
//		long l1 = 2200000000L; //롱타입 특징 맨끝에 대문자 L을 붙여줘야함 
//		
//		float f1 = 1.123f;
//		System.out.println("float : "+ f1);
//		float f2 = 1.1234567f;
//		System.out.println("float : "+ f2);
//		float f3 = 1.1234567123f;
//		System.out.println("float : "+ f3);
//		
//		double d1 = 1.123;
//		double d2 = 1.234567123;
//		System.out.println("double : "+ d1);
//		System.out.println("double : "+ d2);
//		
//		char c1 = 'a';
// 		char c2 = 'ab';
//		char c3 = "a";
//		char c4 = '가';
//		//
//		System.out.println("char "+ c1 + ","+c4);
//		
//		final // 재정의 불가 값 고정 
//	    
//		boolean a = true;
//		boolean b = false; 
//		
//		int a = 10;
//		int b = 20;
//		boolean result = (a==b);
//		System.out.println(result);
//		
//----------------------배열-------------------
//		
//		String [] colors = {"blue","yellow","green"};
//		System.out.println(colors[0]);
//		System.out.println(colors[1]);
//		System.out.println(colors[2]);
//		
//		System.out.println(colors.length); //배열 개수 출력
//		colors[1] = "skyblue"; //배열 재정의 
//		System.out.println(colors[1]);
		
//		int[] engs = {90,100,80,70};
//		
//		
//	    System.out.println(engs[0]);
//	    System.out.println(engs[1]);
//	    System.out.println(engs[2]);
//	    System.out.println(engs[3]);
//	    System.out.println(engs.length);
//	    
//	    int sum1  = engs[0] + engs[1] + engs[2] + engs[3];
//	    
//	    int avg1 = sum1/3;
//	    double avg2 = (double)sum1/3;  //int값을 double 값으로 형변환 
//	    
//	    System.out.println("합계1 : "+ sum1);
//	    System.out.println(avg2);
		
//		int[] score = {1,80,2,100,3,80};
//		
//		int index = score.length-1;  
//		System.out.println(score[index]);
//		
//		System.out.println(score.length-1 + ":" + score[5]);
//		
//		int i = score[0] + score[1] + score[2] + score[3] + score[4] + score[5];
//		System.out.println(i);
//		
//		int a = i/6;
//		System.out.println(a);
	    
//		int[] data2 = new int[3];  //일차원 배열
//		data2[0] = 32;
//		data2[1] = 33;
//		data2[2] = 42;
//		
//		int[][] jumsu = {{85,95,90},{65,70,85,10,20}};  //이차원 배열 (배열안에 배열)
//		
//		System.out.println(jumsu.length); //이차원배열 2개 출력 
//		System.out.println(jumsu[0].length); // 첫번째 3개 배열 출력
//		System.out.println(jumsu[1].length); // 두번째 5개 배열 출력 
//		
//		System.out.println(jumsu[0][0]); //85
//		System.out.println(jumsu[0][1]); //96
//		System.out.println(jumsu[0][2]); //90
//		
//		System.out.println(jumsu[1][0]); //65
//		System.out.println(jumsu[1][1]); //70
//		System.out.println(jumsu[1][2]); //85
		
		
		int[][][] jumsu2 = {{{85,95},{65,70}},{{85,95},{65,70}}}; //3차원 배열 
		
		System.out.println(jumsu2[0][0][0]); //85
		
	    System.out.println(jumsu2[0][0][1]); //95
	    
		System.out.println(jumsu2[0][1][0]); //65
		
		System.out.println(jumsu2[0][1][1]); //70
		
		System.out.println(jumsu2[1][0][0]); //85
		
		System.out.println(jumsu2[1][0][1]); //95
		
		System.out.println(jumsu2[1][1][0]); //65
		
		System.out.println(jumsu2[1][1][1]); //70 마지막 
		
		
	}
	
}
