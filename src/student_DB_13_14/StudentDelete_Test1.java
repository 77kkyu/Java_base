package student_DB_13_14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class StudentDelete_Test1 {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("삭제 아이디 입력>>");
		
		String userid = scan.next();
       	
		String sql = "delete from student "
				   + "where userid='"+userid+"' ";
		
		int result = stmt.executeUpdate(sql);
		
		if(result > 0) {
			System.out.println("삭제 완료");
		}else {
			System.out.println("없는 아이디 입니다");
		}

	}

}
