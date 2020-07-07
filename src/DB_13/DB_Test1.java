package DB_13;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB_Test1 {
  
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
		
		// Query 작성
		String sql = "select userid from student";
		
		// Query 적용
        ResultSet rs = stmt.executeQuery(sql);
        
        // 데이터 존재 유무 판단
        while(rs.next()) {
        	System.out.println(rs.getString("userid"));
        }
        
        
	}

}
