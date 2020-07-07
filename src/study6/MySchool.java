package study6;



class MySubject{
	int kor;   // int kor = 0;
}



public class MySchool {

	public static void main(String[] args) {
	//참조클래스 참조변수 = 생성자 
		MySubject st1 = new MySubject();
		MySubject st2 = new MySubject();
		System.out.println(st1); // 메모리의 위치정보 출력됨
		System.out.println(st2);
	    System.out.println(st1.kor); //0
	    System.out.println(st2.kor); //0
	    
	    st1 = st2; //위치 주소가 넘어감  st1의 주소가 st2주소로 바뀜 
	    st1.kor = 80;
	    System.out.println(st1.kor); //80
	    System.out.println(st2.kor); //80

	}

}
