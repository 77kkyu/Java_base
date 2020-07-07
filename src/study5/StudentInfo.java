package study5;

class Calcul{
	public int score1 = 0; //멤버변수, 인스턴스(객체)변수
	public int score2 = 0;
	public int hap() { // 메소드
		return score1 + score2;
	}
	public int avg() {
		return (score1 + score2)/2;
	}
}

public class StudentInfo {

	public static void main(String[] args) {
		
	//참조클래스 ,참조변수 , 생성자;
		Calcul calcul = new Calcul(); // 객체화, 인스턴스화
		calcul.score1 = 70; 
		calcul.score2 = 80;
		System.out.println("score1 = "+ calcul.score1);
		System.out.println("score2 = "+ calcul.score2 );
		System.out.println("합계 = "+ calcul.hap());
		System.out.println("평균 = "+ calcul.avg());

	}

}
