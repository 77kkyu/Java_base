package study6;

public class ggggggg {
	

	public static void main(String[] args) {
		//1
		int pow = 2;
		int speed =0;
		if(pow ==1) {
			speed = 60;
			System.out.println("파워 1단계로 스피드는 시속"+speed+"km입니다");
		}else if(pow == 2) {
			speed = 80;
			System.out.println("파워 2단계로 스피드는 시속"+speed+"km입니다");
		}else if(pow == 3) {
			speed = 100;
			System.out.println("파워 2단계로 스피드는 시속"+speed+"km입니다");
		}
		
		/////////////////////////////////////////////////////
		//2
		String judge1 = "찬성";
		String judge2 = "반대";
		String judge3 = "찬성";
		
		
			
		
		//3
		for(int i=6; i<=10; i++) {
			System.out.print(i+"일 ");
			
		}
		System.out.println();
		//4
		for(int j=1; j<=10; j+=3) {
		System.out.print(j+"월 ");
		}
		
		//5
		// int number = 1;
		// if(number%3 ==0)
		for(int z=101; z<=110; z++) {
			if(z%3 ==2) {
				System.out.println();
			}
			System.out.print(z+" ");
		}
		System.out.println();
		//6
		int speed1 = 0;
		for(int c=1; c<=24; c++) { // c 마지막은 24 
			for(int mi=10; mi<=60; mi+=10) { //mi 마지막은 60
				
			 speed1=c*mi;
				 
			}
		}
		System.out.print("최종속도 : "+ speed1);
		
		System.out.println();
		//7
		int[] grades = {70,80,30,40,70,60};
		int sum = 0;
		for(int n=0; n<grades.length; n++) {
			sum += grades[n];
			
		}
		System.out.print("합계: "+sum+"  ");
		System.out.print("평균: "+(sum/grades.length));
		
		System.out.println();
		
		//8
		
		int[] grades1 = {70,80,60};
		System.out.println(grades1[2]+","+grades1[0]+","+grades1[1]);
		System.out.println();
		//9
		
		int kor = 90;
		int eng = 80;
		
		
		System.out.println("total: "+ hap(kor,eng));
		
		System.out.println();
		//10
		
		MyHakjum hakjum = new MyHakjum();
		
		hakjum.jumsu = 90;
		hakjum.calcul();
		
		System.out.println(hakjum.jumsu+"점으로 "+hakjum.calcul()+"학점입니다");
		
	}
	
    public static int hap(int a, int b) {

		return a+b;
    	
    }
    
    
}
class MyHakjum{
	int jumsu;
	public String calcul() {
		
		String hakjum = "";
		if(jumsu >= 90) {
			hakjum ="A";
		}
		
		return hakjum;
	  
		
	}
}
