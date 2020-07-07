package study4;

public class Method1 {

	public static void main(String[] args) {
		
		String empInfo = " 입사일:20150120, 이름:홍길동, 직급:대리 ";
		System.out.println(empInfo.length());
		
		empInfo = empInfo.trim();
		System.out.println(empInfo.length());
		
		empInfo = empInfo.replace("대리", "과장");
		System.out.println(empInfo);
		
		System.out.println(empInfo.substring(0,12));
		System.out.println();
		System.out.println(empInfo.substring(14,27));
		
		String [] array = empInfo.split(",");
		for(int i=0; i<array.length; i++) {
			System.out.println(array[i]);
		}
			
		int l= array.length-1;
		
		for(int j=0; j<array.length; j++) {
			String array1 = array[j];
			String [] array2 = array1.split(":");
			System.out.print(array2[1]);
			if(j<l) {		
					System.out.print("/");
			}
	
		}
	
		System.out.println();
		
		String hiredata = "801225,891005,980503,771001";
//		hiredata = hiredata.replace("801225", "80/12/25");
		String [] has = hiredata.split(",");
		for(int x=0; x<has.length; x++) {
			System.out.println(has[x]);
		}
		
		System.out.println();

		
		for(int n=0; n<has.length; n++) {
			String a1 = has[n].substring(0,2);
			String a2 = has[n].substring(2,4);
			String a3 = has[n].substring(4,6);
			System.out.println(a1+"/"+a2+"/"+a3);
		}
		
		String address = "123456 서울특별시 종로구 을지로 12-1";
		
		String[] addrarray = address.split(" ");
		System.out.println(addrarray[0]);
		System.out.println(address.replace(addrarray[0], "").trim());
		System.out.println(addrarray[0].substring(0,3)+"-"+addrarray[0].substring(3,6));
		
		String g ="서울,마포구,망원동,아현동";
		
		String[] g1= g.split(",");
		System.out.println(g1[1]);
	}

}
