package study7;

public class StudentInfo extends StudentInfoVO {
	
	public int sum(int a, int b) {
		return a+b;
	}
	public int avg(int a, int b) {
		return(a+b)/2;
	}

	public static void main(String[] args) {
		
		
		
		StudentInfo s = new StudentInfo();
		
		s.setName("김철수");
		s.setYear(1);
		s.setEng(90);
		s.setKor(80);
		
		System.out.println(s.getName()+" "+s.getYear()+" "+
		s.sum(s.getKor(), s.getEng())+" "+s.avg(s.getKor(), s.getEng()));

	}

}
