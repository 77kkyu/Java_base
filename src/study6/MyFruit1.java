package study6;

class CherryInfo{
     String name = "체리"; //멤버변수, 전역변수
     int price = 5000;      //private : 상속해도 제어함 
    
     void discount() {
    	price -= 300;
    }
}

public class MyFruit1 extends CherryInfo {
	
	public static void main(String[] args) {
		
		//System.out.println(CherryInfo.name); 상속안할시  
		
//		System.out.println(name);
//		System.out.println(price);
//		discount();
//		System.out.println(price);
		
		MyFruit1 cc = new MyFruit1();  //자식클래스 static이 빠졌을경우
        System.out.println(cc.name);   //부모클래스명으로 객체 생성
        System.out.println(cc.price);
        cc.discount();
        System.out.println(cc.price);
		
		
		

	}

}
