package study5;
class Score{
	int kor; // 비어있음 0
	int eng;
	int cls;
	String name = "";
	
	public int sum(int kor, int eng) {
		return kor+eng;
		
	}
	public int avg(int kor, int eng) {
		return (kor+eng)/2;
	}


public class VariableExam {
	

	public void  main(String[] args) {
		
		int avg = 0; // 지역변수 (메소드 안에서만 사용가능)
	Score kim = new Score(); //객체생성
	Score hong = new Score();
	
	kim.name = "김철수";
	kim.kor = 100; 
	kim.eng = 90;
	
	hong.name = "홍길동";
	hong.kor = 80; 
	hong.eng = 70;
	
	System.out.println("합계: "+kim.sum(kim.kor,kim.eng));
	System.out.println("평균: "+kim.avg(kim.kor, kim.eng));
	
//	int kor = score.kor;
//	int eng = score.eng;
//	avg = (kor + eng)/2;
//	System.out.println("국어:"+kor+","+"영어:"+eng+","+"평균:"+avg);
	
	

	}

}
}