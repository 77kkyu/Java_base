package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.MyConnect;

public class StudentSelect_Test1 {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
			
		String sq12 = "SELECT COUNT(*) as total FROM student";  //데이터가 몇개있는지 체크
		ResultSet rs2 = stmt.executeQuery(sq12);	
		rs2.next();
		int total = rs2.getInt("total");
		
		///////////////////////////
		
		String sql = "SELECT userid,username,age,gender,year FROM student ORDER BY userid ASC"; //데이터 출력하기 
		
		ResultSet rs = stmt.executeQuery(sql);
		
		
		System.out.println("total: "+ total);
		System.out.println("========================================");
		int number = 1;
		
		
		
		while(rs.next()) {
			System.out.print(number+". ");
			System.out.print(rs.getString("userid")+" ");
			System.out.print(rs.getString("username")+" ");
			System.out.print(rs.getString("age")+" ");
			System.out.print(rs.getString("gender")+" ");
			System.out.print(rs.getString("year"));
			System.out.print("\n");
			number++;
			
		}

	}

}
