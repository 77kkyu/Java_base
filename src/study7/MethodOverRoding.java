package study7;

//오버로딩 - 매개변수에 따라 메소드 이름 반복 가능  
//    객체지향 *다향성*

class BananaInfo{
	String name = "바나나";
    int price = 5000;
}

public class MethodOverRoding extends BananaInfo{
	
	void discount() {
		price -= 500;
	}
	void discount(int old) {
		if(old >=1 && old >=2) {
			price -= 500;
		}
		else if(old >= 3 && old <= 5) {
			price -= 1000;
		}else {
			price -= 2000;
		}
	}
	void discount(String area) {
		if(area.equals("usa")) {
			price -= 500;
		}else if(area.equals("japan")) {
			price -= 1000;
		}
	}

	public static void main(String[] args) {
		
		MethodOverRoding fruit = new MethodOverRoding();
		fruit.discount(3);
		fruit.discount("korea");
		System.out.println("상품명: "+fruit.name+", 가격: "+fruit.price);
	//	System.out.println(args[0]+","+args[1]);

	}

}
