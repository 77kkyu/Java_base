import java.util.ArrayList;
import java.util.Scanner;

public class RandomNumber {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("난수 개수 입력");
	    int hap = sc.nextInt();
	    int sum = 0;
       for( int i=1; i<99; i++) {
		
		sum += hap;
		hap++;
       }
       System.out.println(sum);
		
//		String[] a = {"1234","56","789"};
//		int len = a.length;
//		int sum=0;
//			for(int i=0; i<len; i++) {
//				sum += Integer.parseInt(a[i]);
//			}	
//			System.out.println("총합: "+sum);

//		int a=5, b=10, c=15, d=30;
//		boolean result;
//		result = (a*3+b > d) || (c-b/a <= d);
//		System.out.println(result);
//			
		
//		String[] dates = {"2020-01-01","2020-01-02","2020-01-03"};
//		ArrayList<String> arrayList=new ArrayList<>();
//		arrayList.add("dates[0]");
//		arrayList.add("dates[1]");
//		arrayList.add("dates[2]");
		
         		
		}

				
	}


