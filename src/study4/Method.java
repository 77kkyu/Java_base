package study4;

public class Method {

	public static void main(String[] args) {
       
		String data1 = " BigData python hadoop mysql ";
		System.out.println(data1.length()); //앞뒤 띄어쓰기 모든공백 포함 
		
		System.out.println();
		
		data1 = data1.trim(); // 앞뒤 공백 제거 
		System.out.println(data1.length());
		
		System.out.println();
		
	    data1 = data1.replace("mysql", "oracle"); //치환 : change 단어 교체 
	    System.out.println(data1);
	    
	    System.out.println();
	    
	    System.out.println(data1.substring(0,7)); //원하는 단어 출력 BigData
	    System.out.println(data1.substring(8,14)); // python
	    
	    System.out.println();
	    
	    System.out.println(data1.charAt(3)); //특정 index 위치 단어 하나 출력
	    
	    System.out.println();
	    
	    System.out.println(data1.indexOf("hadoop")); // index 값 출력하기 15
	    System.out.println(data1.indexOf("zzz")); // 단어가 없으면 -1 출력
	    System.out.println(data1.indexOf("a")); // 맨앞에 단어만 출력 4
	    System.out.println(data1.lastIndexOf("a"));// 마지막 단어 위치번호 출력 24
	    //중간에 있는 단어 index는 찾을 수 없음 
	    
	    System.out.println();
	    
	    System.out.println(data1.contains("hadoop")); //단어가 있는지 없는지 출력(true)
	    System.out.println(data1.contains("df")); //단어가 없으면 false
	    
	    System.out.println();
	    
	    System.out.println(data1.startsWith("BigData")); // true //처음 시작하는 단어 
	    System.out.println(data1.startsWith("java")); //false
	    System.out.println(data1.endsWith("oracle")); //true //마지막 끝나는 단어 
	    System.out.println(data1.endsWith("mysql")); //false //오라클로 변경했기 때문
	    
	    System.out.println();
	    
	    System.out.println(data1.toUpperCase()); // 올 대문자 출력
	    System.out.println(data1.toLowerCase()); // 올 소문자 출력
	    
	    System.out.println();
	    
	    String s = "Hello";
	    System.out.println(s.equals("Hello")); //true  같은지 아닌지 비교
	    System.out.println(s.equals("hello")); //false 대문자 소문자 구분 
	    
	    System.out.println();
	    
	    //BigData python hadoop oracle
	    System.out.println(data1);
	    
	    String[] array = data1.split(" "); //구분자를 통한 나눔 
	    System.out.println(array[0]); //BigData 
	    System.out.println(array[1]); //python
	    System.out.println(array[2]); //hadoop
	    System.out.println(array[3]); //oracle
	    
	    System.out.println();
	    
	    String str = "java／html／jsp";
	    String[] str2 = str.split("／"); //  **ㄱ 특수문자 슬러시로 자주 구분함**
	    System.out.println(str2[0]);
	    System.out.println(str2[1]);
	    System.out.println(str2[2]);
	    System.out.println(str2.length); //	배열길이 
	    
	    System.out.println();
	    
	    for(int i=0; i<str2.length; i++) {
	    	System.out.println(str2[i]);
	    }
	    
	    System.out.println();
	    
	    String title = "자바프로그래밍 입문";
	    String content = "자바를 이용하여 완성한다";
	    
	    int ret1 = title.indexOf("자바");
	    int ret2 = content.indexOf("자바");
	    
	    
	    System.out.println(title.indexOf("자바")); // index 0번 
	    if(ret1 > -1 && ret2 > -1) {
	    	System.out.println("자바라는 단어가 모두 포함되었습니다");
	    	
	    }else if((ret1 <0 && ret2 >-1) || (ret1 >-1 && ret2<0)) {
	    	System.out.println("자바라는 단어가 한쪽만 포함 되었습니다");
	    }
	    else {
	    
	    	System.out.println("자바라는 단어가 모두 포함되지 않았습니다");
	    }
	    	
	    String jumsu = "eng:70,kor:90,math:88";
	    String [] jumsu1 = jumsu.split(",");
//	    System.out.println(jumsu1[0]);
//	    System.out.println(jumsu1[1]);
//	    System.out.println(jumsu1[2]);
	    
	    for(int i=0; i<jumsu1.length; i++) {
	    	System.out.println(jumsu1[i]);
	    }
	    
	    String a1 = jumsu.substring(4,6);
	    String a2 =jumsu.substring(11,13);
	    String a3 =jumsu.substring(19,21);
	    System.out.println(a1+" "+a2+" "+a3);
	    
	    for(int i=0; i<jumsu1.length; i++) {
	    	String str5 = jumsu1[i];
	    	String [] str6 = str5.split(":");
	    	System.out.print(str6[1]+" ");
	    }
	    
	    System.out.println();
	    
	    String str3 = "java";
	    
	    
	    System.out.println(str3.substring(0, 1));
	    System.out.println(" "+str3.substring(1, 2));
	    System.out.println("  "+str3.substring(2, 3));
	    System.out.println("   "+str3.substring(3, 4));
	    
	    System.out.println();
	    
	    int len = str3.length();
	   
	    for(int i = 0; i < len; i++) {
	    	for(int j = 0; j < i; j++) { 		
	    		System.out.print(" ");		
	    	}
	     System.out.println(str3.subSequence(i, i+1)); 
	    }
  

	}

}
