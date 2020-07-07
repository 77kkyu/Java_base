package study9;

class TestVo{
	private int a;

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}
	
}

public class MyTest {

	public static void main(String[] args) {
		
		int a = 123456789;
		String a1 = String.valueOf(a);
		System.out.println(a1.charAt(2)+" "+a1.charAt(6));
		/////
		String aa = "ab";
		char aa_1 = aa.charAt(0);
		char aa_2 = aa.charAt(1);
		aa_2++;
		String a_3 = String.valueOf(aa_1)+ String.valueOf(aa_2);
		
		System.out.println(a_3);
		//////
		
		String[] b = {"1234","56","789"};
		
		int sum = 0;
		String str = "";
		for(int i=0; i<b.length; i++) {
			sum += Integer.parseInt(b[i]);
			str += b[i].charAt(1)+" ";
			
		}
		System.out.println(sum);
		System.out.println(str);
		
		///////
		
		String[] f_1 = {"영어","수학","과학","체육","국어"};
		int[] f_2 = {90,88,75,55,95};
		String hak = "";
		
		for(int v=0; v<f_1.length; v++) {
			if(f_2[v] >= 90) {
				hak = "a";
			}else if(f_2[v] >= 80) {
				hak = "b";
			}else if(f_2[v] >= 70) {
				hak = "c";
			}else  {
				hak = "f";
			}
			System.out.print(f_1[v]+":"+hak);
	    	if(v<f_1.length-1) {
	    		System.out.print(",");
	    	}
		}
		System.out.println();
		///////
		
		double x = 91.123;
		x = Math.ceil(x);
		int x_1 = Integer.parseInt(String.valueOf(Math.round(x)));
		System.out.println(x_1);
		
		
        //////
		
		TestVo vo = new TestVo();
		vo.setA(900);
		System.out.println(vo.getA());
   
		/////

	}

}
