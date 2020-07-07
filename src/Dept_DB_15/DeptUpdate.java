package Dept_DB_15;

import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class DeptUpdate {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("==수정 등록==");
		
		System.out.print("1. 수정 할 번호입력>>");
		int deptno = scan.nextInt();
		
		System.out.print("2. 이름을 수정해주세요>>");
		String dname = scan.next();
		
		System.out.print("3. 위치를 수정해주세요>>");
		String loc = scan.next();
		
		String sql = " update dept set "
				+ "dname='"+dname+"',loc='"+loc+"'"
						+ "where deptno='"+deptno+"' ";
						
		
		int result = stmt.executeUpdate(sql);
		
		if(result >0) {
			System.out.println("수정완료");
		}else {
			System.out.println("수정실패");
		}
		
		
		
		

	}

}
