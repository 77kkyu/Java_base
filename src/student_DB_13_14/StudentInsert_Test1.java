package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class StudentInsert_Test1 {

	public static void main(String[] args) throws Exception {
	
		Statement stmt = MyConnect.Connect();
		
		String message = "";
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("==회원정보 등록==");
		
		System.out.print("1.아이디입력>>");
		String userid = scan.next();
		
		System.out.print("2.이름>>");  //이름은 영문으로  
		String username = scan.next();
		
		System.out.print("3.연령>>");
		int age = scan.nextInt();
		if(age < 14 || age > 16) {
			message += "연령오류 ";
		}
		
		System.out.print("4.성별(M/F)>>");
		String gender = scan.next();
		gender = gender.toUpperCase(); //소문자 입력해도 대문자처리
		if(!gender.equals("M") && !gender.equals("F")) {
			message += "성별오류 ";
		}
		
		System.out.print("5.학년>>");
		int year = scan.nextInt();
		if(year <1 || year > 3) {
			message +="학년오류 ";
		}
		
		if(message.length() > 0) {
			System.out.println(message);
		}else {
			String sql = "INSERT INTO student("
					+ "userid,"
					+ "username,"
					+ "age,"
					+ "gender,"
					+ "year)"
					
		            + "VALUES( "
		            + "'"+userid+"',"   //스캐너 객체 넣기
		       		+ "'"+username+"',"
		       		+ "'"+age+"',"
		       		+ "'"+gender+"',"
		       		+ "'"+year+"') ";  
		       
		       int result = stmt.executeUpdate(sql); //입력시 숫자1 아닐시 숫자0

		       if(result == 1) {
		    	   System.out.println("저장완료");
		       }else {
		    	   System.out.println("저장실패");
		       }
		}
		
//		String sql = "INSERT INTO student("
//				+ "userid,"
//				+ "username,"
//				+ "age,"
//				+ "gender,"
//				+ "year)"
//				
//	            + "VALUES( "
//	            + "'"+userid+"',"   //스캐너 객체 넣기
//	       		+ "'"+username+"',"
//	       		+ "'"+age+"',"
//	       		+ "'"+gender+"',"
//	       		+ "'"+year+"') ";  
//	       
//	       int result = stmt.executeUpdate(sql); //입력시 숫자1 아닐시 숫자0
//
//	       if(result == 1) {
//	    	   System.out.println("저장완료");
//	       }else {
//	    	   System.out.println("저장실패");
//	       }
	       
	}

}
