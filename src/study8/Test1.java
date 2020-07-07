package study8;

public class Test1 {

	public static void main(String[] args) {
		///////////숫자패턴
		String birthday = "1980-02-22";
		String pattern = "[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}";
		if(birthday.matches(pattern)) {
			System.out.println("올바른 날짜");
		}else {
			System.out.println("올바른 날짜 아님");
		}
		//////////특정단어 찾기
		String txt1 = "테스트입니다.";
		if(txt1.matches(".*테스트.*")) {
			System.out.println("특정 문자 있음");
		}else {
			System.out.println("특정 문자 없음");
		}
		////////// 인덱스 번호 부터 있나 없나 찾음 indexOf
		if(txt1.indexOf("테") >= 0) {
			System.out.println("특정 문자 있음");
		}else {
			System.out.println("특정 문자 없음");
		}
		/////////숫자가 있는지 파악
		if(txt1.matches(".*[0-9]*.")) {
			System.out.println("숫자있음");
		}else {
			System.out.println("숫자 없음 ");
		}
		/////////전화번호 숫자 체크  2~3 , 3~4 , 4   ^문자열 시작 , $문자열 종료
		String phone = "010-3058-2757";
		//String pattern1 = "^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$";
		String pattern1 = "^01[0-9]{1}-[0-9]{3,4}-[0-9]{4}$";
		if(phone.matches(pattern1)) {
			System.out.println("올바른 번호");
		}else {
			System.out.println("올바른 번호 아님");
		}
		///////// 이메일 체크  시작(영문,숫자,특수문자 _,-)한개이상
		//                               @ (영문,숫자)한개이상 . (영문)
        // ^[a-zA-Z0-9_-]+$@[a-zA-Z0-9]+\.[a-zA-Z]
		
		String email = "Cjfrb_-022@naver.com";
		String emailPattern ="^[a-zA-Z0-9_-]+@[a-zA-Z0-9]+\\.[a-zA-Z0-9]+";
		
		if(email.matches(emailPattern)){
			System.out.println("올바른 이메일");
		}else {
			System.out.println("올바르지 않은 이메일");
		}
		
		///////// 주민번호 패턴체크
		
		String number = "123456-1234567";
		String numberPattern = "[0-9]{6}-[1-4][0-9]{6}";
		if(number.matches(numberPattern)) {
			System.out.println("올바른 주민번호");
		}else {
			System.out.println("올바르지 않은 주민번호");
		}
		
		///////// 한글 패턴체크
		
		String kor = "12하하하77";
		String korpattern = "^.*[가-힣].*";
	if(kor.matches(korpattern)) {
		System.out.println("한글 포함");
	}else {
		System.out.println("한글 미포함");
	}
				
		
		
		
		
	}

}
