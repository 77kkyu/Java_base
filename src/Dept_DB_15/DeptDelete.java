package Dept_DB_15;

import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class DeptDelete {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();

		Scanner scan = new Scanner(System.in);
		
		System.out.println("삭제 번호 입력>>");
		
		int deptno = scan.nextInt();
		
		String sql = "DELETE FROM dept where deptno='"+deptno+"' ";
		
		int result = stmt.executeUpdate(sql);
		
		if(result > 0) {
			System.out.println("삭제완료");
		}else {
			System.out.println("없는 번호입니다");
		}
		
	}

}
