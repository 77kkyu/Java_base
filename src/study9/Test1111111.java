package study9;

public class Test1111111 {

	public static void main(String[] args) {
		///////1
		int a = 123456789; 
	    
		String a1 = Integer.toString(a); // 스트링으로 형변환 
		System.out.println(a1.substring(2,3)+" "+a1.substring(6,7));
		//charAt 사용해도 됨 
	
        ////////2 문자열 증감 ab를 ac로 만들어야함
		
		String b = "ab";
		String b_1=""+b.charAt(0); 
		char b_2=b.charAt(1); //char 특성 이용 
		b_2++;   //char는 ++가 됨 
		String b_3 = b_1 + b_2; //문자열끼리 연결 
		System.out.println(b_3);  //정답 
		
		System.out.println();
		
		String cc = "ㅇㅇ";
		String bb = "ㅁㅁ";
		String nn = cc+bb;
		System.out.println(nn);
		
		System.out.println();
		
		char mm= 'a';
		int code = (int) mm;
		System.out.println(code);
		mm++;
		
		System.out.println(mm);
		
		System.out.println();
		
		
		/////////3  1.합계를 구하시오 2.각 요소의 두번째 값을 출력
		String[]c = {"1234","56","789"};
		
		int sum = 0;
		String str = "";
		for(int i=0; i<c.length; i++) {
			sum+=Integer.parseInt(c[i]);
			str += c[i].charAt(1)+" ";
		}
		System.out.println("합계: "+sum);
		System.out.println("두번째 값: "+str);
		
		//////////4 다음의 배열 값을 이용하여 성적 출력
	    String[] m = {"영어","수학","과학","체육","국어"};
	    int[] num = {90,88,75,55,95};
	    
	    for(int f=0; f<m.length; f++) {
	    	String hak = "";
	    	if(num[f]>=90) {
	    		hak ="A";
	    		
	    	}else if(num[f]>=80) {
	    		hak ="B";
	    		
	    	}else if(num[f]>=70) {
	    		hak ="C";
	    		
	    	}else if(num[f]>=60) {
	    		hak ="D";
	    		
	    	}else {
	    		hak ="F";
	    		
	    	}
	    	System.out.print(m[f]+":"+hak);
	    	if(f<m.length-1)System.out.print(",");
	    }
	    System.out.println("");
	    

	    /////////5 올림함수를 이용하고 정수형태를 취한다 
	    double do1 = 91.123;
	    do1 = Math.ceil(do1);
	   // int do2 = Integer.parseInt(String.valueOf(Math.round(do1)));

	    System.out.println(Math.round(do1)); //92
	    
	    /////////6  메소드생성 결과 2020-03-22은 (짝수날) 입니다
	    String aa = "2020-03-22";
	    System.out.println(aa+"는 "+numberGubun(aa)+"날 입니다");
	   
	    
	    /////////7 get /set 사용하기 클래스 2개 생성 
	    
	    
		
	}
      
	public static String numberGubun(String date) {
		
		String result = "";
		String[] dates = date.split("-");
	
		if(Integer.parseInt(dates[2]) %2 ==0) {
                 result = "짝수";			
		}else {
			result = "홀수";
		}
		
		
		return result;
		
		
		

		
		}
	       
		
	}
	
	
	

