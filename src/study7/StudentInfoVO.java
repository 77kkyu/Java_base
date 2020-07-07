package study7;

public class StudentInfoVO {

	public String name;
	public int year;
	public int eng;
	public int kor;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		if(eng<0 || eng>100) {
			eng = 0;
		}
		this.eng = eng;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		if(kor <0 || kor>100) {
			kor = 0;
		}
		this.kor = kor;
	}
	
	
}
