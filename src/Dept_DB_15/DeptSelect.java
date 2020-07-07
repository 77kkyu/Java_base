package Dept_DB_15;

import java.sql.ResultSet;
import java.sql.Statement;

import com.MyConnect;

public class DeptSelect {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
//		MyConnect connect = new MyConnect();
		
//		Statement stmt = connect.Connect();
		
		String sql = "SELECT deptno,dname,loc FROM dept ORDER BY deptno ASC";
		String sql2 = "SELECT COUNT(*) as total FROM dept";
		
		
		ResultSet rs2 = stmt.executeQuery(sql2);
		rs2.next();
		int total = rs2.getInt("total");
		
		ResultSet rs = stmt.executeQuery(sql);
		
		System.out.println("total: "+ total);
		System.out.println("===========================");
		int number = 1;
		
		while(rs.next()) {
			int deptno = rs.getInt("deptno");
			String dname = rs.getString("dname");
			String loc = rs.getString("loc");
			System.out.println(number+". "+deptno+"\t"+dname+"\t"+loc);
			number++;
		}
		

	}

}
