package study7;

class CarInfo1{
	String name = "그랜저";
	int price = 4000;
	int maxSpeed = 300;
	
	public String uesdCar(int year) {
		int result = 0;
		if(year > 2014) {
			result = 3000;
		}else {
			result = 1000;
			
		}
		return ""+result;
	}
}

public class Mycar1 extends CarInfo1 {
	
	public String usedCar(int year) {
		int result = 0;
		if(year > 2016) {
			result = 3500;
		}else if(year > 2013) {
			result = 2500;
		}else {
			result = 1000;
			
		}
		
		//result2 = 2500; 
		String result2 = ""+result; // Integer.toString(result); 
		
		int a = result2.length() % 3;
		String result3 = "";
		for(int i=0; i<a; i++) {
		    String b = result2.substring(i,i+1); //2
		    result3 += b;
		}
		int cnt = 0;
		for(int i=a; i<result2.length(); i++) {
			if(cnt%3 == 0) {
			result3 += ",";
			}
			String b = result2.substring(i,i+1);
			result3 += b;
			cnt++;
		}
		
		return result3;
	}

	public static void main(String[] args) {
		
		Mycar1 info = new Mycar1();
		System.out.println("차 이름: "+ info.name);
		System.out.println("차 가격(new): "+info.price);
		System.out.println("중고차 가격(2015년식): "+ info.usedCar(2015));
		

	}

}
