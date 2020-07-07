package Dept_DB_15;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class DeptInsert {
    
	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
        
		Scanner scan = new Scanner(System.in);
		
		int deptno = 0;
		
		while(true) { //반복문 
		
		    System.out.print("부서 번호>>");
		    deptno = scan.nextInt();
		    
		    String sqlCnt = "SELECT count(*) as cnt FROM dept "
		    		      + "WHERE deptno='"+deptno+"'";
		    
		    ResultSet rsCnt = stmt.executeQuery(sqlCnt); 
		    rsCnt.next();
		    int cnt = rsCnt.getInt("cnt");
		    if(cnt != 0) {
		    	System.out.println("중복된 부서번호 존재");
		    }else {
		    	break; // 반복문 종료
		    }
		} // 반복문 
	    	    
	    System.out.print("부서 이름>>");
	    String dname = scan.next();
	    
	    System.out.print("부서 위치>>");
	    String loc = scan.next();
	    
	    String sql = "Insert Into dept(deptno,dname,loc)"
	    		   + "values('"+deptno+"','"+dname+"','"+loc+"')";
	    
	    int result = stmt.executeUpdate(sql);
	    
	    if(result > 0) {
	    	System.out.println("저장처리완료");
	    }else {
	    	System.out.println("저장실패");
	    }
	    
		
		
	}

}
