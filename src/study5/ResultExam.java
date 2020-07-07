package study5;

public class ResultExam {

	public static void main(String[] args) {
		
		System.out.println(result(63,63));

	}
	
	public static String result(int a, int b) {
		String message = "";
		
		if(a>=60 && b>= 60) {
			message = "합격입니다";
		}else if(a<60 && b<60) {
			message = "불합격입니다";
		}else {
			message = "재시험입니다";
		}
		
		
		return message;
		
	}

}
