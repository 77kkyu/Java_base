package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class StudentInsert {
//데이터 저장
	public static void main(String[] args) throws Exception {
		
		String id = "root";
		String pass = "apmsetup";
		String url = "jdbc:mysql://localhost:3306/apple1?";
		       url +="useUnicode=true&characterEncoding=utf8";
		       
		// 접속 드라이드 연결
		Class.forName("com.mysql.jdbc.Driver");
		
		//DB 접속(로그인) 정보
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		//접속 객체 생성
		Statement stmt = conn.createStatement();
		
		String sql = "INSERT INTO student(userid,username,age,gender,year)";
		       sql += "VALUES('test1','hong','20','M','3')";
		       
		int result = stmt.executeUpdate(sql); //입력시 숫자1 아닐시 숫자0

		if(result == 1) {
			System.out.println("저장완료");
		}else {
			System.out.println("저장실패");
		}
	}

}
