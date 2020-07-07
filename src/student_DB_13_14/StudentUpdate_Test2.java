package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;





public class StudentUpdate_Test2 {

	public static void main(String[] args) throws Exception {
		
		
		
		Statement stmt = MyConnect.Connect();
				
		String message = "";
		
		Scanner scan = new Scanner(System.in);
		
        System.out.println("==수정 등록==");
		
		System.out.print("1.수정 아이디입력>>");
		String userid = scan.next();
		
		
		
		System.out.print("2.수정 이름>>");  //이름은 영문으로  
		String username = scan.next();
		
		System.out.print("3.수정 연령>>");
		int age = scan.nextInt();
		if(age < 14 || age > 16) {
			message += "연령오류 ";
		}
		
		System.out.print("4.수정 성별(M/F)>>");
		String gender = scan.next();
		gender = gender.toUpperCase(); //소문자 입력해도 대문자처리
		if(!gender.equals("M") && !gender.equals("F")) {
			message += "성별오류 ";
		}
		
		System.out.print("5.수정 학년>>");
		int year = scan.nextInt();
		if(year <1 || year > 3) {
			message +="학년오류 ";
		}
		
		if(message.length() > 0) {
			System.out.println(message);
		}else {
			
			String sql = " update student set "
					+ "username='"+username+"',"
					+ "age='"+age+"',"
					+ "gender='"+gender+"',"
					+ "year='"+year+"' "
					+ "where "
					+ "userid='"+userid+"' ";
		                       
		int result = stmt.executeUpdate(sql);
		
		if(result > 0) {
			System.out.println(result+"수정 완료");
		}else {
			System.out.println(result+"수정 실패");
		}
		
	}
		
//		String sql = " update student set "
//					+ "username='"+username+"',"
//					+ "age='"+age+"',"
//					+ "gender='"+gender+"',"
//					+ "year='"+year+"' "
//					+ "where "
//					+ "userid='"+userid+"' ";
//		                       
//		int result = stmt.executeUpdate(sql);
//		
//		if(result > 0) {
//			System.out.println(result+"수정 완료");
//		}else {
//			System.out.println(result+"수정 실패");
//		}

	}

	

}
