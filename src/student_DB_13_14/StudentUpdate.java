package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class StudentUpdate {

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
		
		String sql = " update student set "
					+ "username='톰하디',"
					+ "age='15',"
					+ "gender='m',"
					+ "year='2' "
					+ "where "
					+ "userid='test1' ";
		                       
		int result = stmt.executeUpdate(sql);
		
		if(result > 0) {
			System.out.println(result+"업데이트 완료");
		}else {
			System.out.println(result+"업데이트 실패");
		}

	}

}
