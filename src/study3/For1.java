package study3;

public class For1 {

	public static void main(String[] args) {
		
//		int[] datas = {90,80,70};
//		int len = datas.length;
//		for(int i=0; i<len; i++) {
//			System.out.println(datas[i]);	
//		}	
//		System.out.println("배열길이:"+len);
		
		
//		int[] datas = {90,-80,70};
//		int len = datas.length;
//		int sum=0;
//		for(int i=0; i<len; i++) {
//			sum += datas[i];
//		}	
//		System.out.println("총합: "+sum);
		
//		int []score = {90,88,-30,70};
//		int len = score.length;
//		
//		int sum = 0;
//		int cnt = 1;
//		for(int i=0; i<len; i++) {
//			if(score[i] >= 0) {
//				sum += score[i];
//				System.out.println(cnt+++"."+score[i]);
//			}
//	
//		}
//	
//		System.out.println("합계: "+sum);
		
 		
		int[] count = {1,4,5};
		for(int i=0; i<count.length; i++) {
		System.out.print(count[i]+" ");	
		for(int j=1; j<=count[i]; j++) {
			System.out.print("*");
		}
	    System.out.println("\n");
		}
		
		
	
		

	}

}
