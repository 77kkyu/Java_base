package study6;

class TvInfo{
   String color;
   String size;
   String price;
	
}
//final = 재정의 불가 상속불가
//public = 누구나 접근 허용
//private = 접근 권한 접근 제한 보안 
public class TvApp1 {
	

	public static void main(String[] args) {
		
		TvInfo model001 = new TvInfo();
		TvInfo model002 = new TvInfo();
		
		model001.color = "blue";
		model001.size  = "30";
		model001.price = "100";
		
		model002.color = "red";
		model002.size  = "22";
		model002.price = "70";
		
		System.out.println("model001 정보: "+model001.color+"/ "+model001.size+"/ "+model001.price);
		System.out.println("model002 정보: "+model002.color+"/ "+model002.size+"/ "+model002.price);

	}

}
