package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class StudentSelect {
// 데이터베이스 출력 
	public static void main(String[] args) throws Exception {
		
		String id = "root";
		String pass = "apmsetup";
		String url = "jdbc:mysql://localhost:3306/apple1?";
		       url +="useUnicode=true&characterEncoding=utf8";
		       
		// 접속 드라이드 연결
		Class.forName("com.mysql.jdbc.Driver");
		
		//DB 접속(로그인) 정보
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		//접속 인스턴스 생성
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT userid,username,age,gender,year FROM student";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			System.out.print(rs.getString("userid")+" ");
			System.out.print(rs.getString("username")+" ");
			System.out.print(rs.getString("age")+" ");
			System.out.print(rs.getString("gender")+" ");
			System.out.print(rs.getString("year"));
			System.out.print("\n");
			
		}
		
		

	}

}
