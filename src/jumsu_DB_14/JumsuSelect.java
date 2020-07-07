package jumsu_DB_14;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class JumsuSelect {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		String sql2 = "SELECT COUNT(*) as total FROM jumsu";
		ResultSet rs2 = stmt.executeQuery(sql2);
		rs2.next();
		int total = rs2.getInt("total");
		
		//total: 36->4 ; 12->2 ; 7->1
		//36/10 ->3.6=소숫점반올림  
		// (double) total1/10 = Math.ceil(3.6) = 4 
		
		int totalpage = (int) Math.ceil((double)total/10);
		Scanner scan = new Scanner(System.in);
		System.out.print("페이지 번호를 입력하세요>>");
		
		//(1-1)*10 =0   (2-1)*10=10   (3-1)*10=20   (4-1)*10=30             //화면 페이지 
		int pageNo = scan.nextInt();
		int indexNo = (pageNo-1)*10; //1page =0; 2page =10; 3page =20; 4page =30
		
		String sql = "SELECT no,loc,userid,kor,eng FROM jumsu ORDER BY no ASC LIMIT "+indexNo+",10";
		ResultSet rs = stmt.executeQuery(sql);
		
		System.out.println("total: "+total);
		System.out.print("page no: ");
		for(int i=1; i<=totalpage; i++) {
			System.out.print(i+" ");
		}
		System.out.print("\n");
		System.out.println("==================");
		
		while(rs.next()) {
			System.out.print(rs.getString("no")+" ");
			System.out.print(rs.getString("loc")+" ");
			System.out.print(rs.getString("userid")+" ");
			System.out.print(rs.getString("kor")+" ");
			System.out.print(rs.getString("eng"));
			System.out.println("\n");
			
		}
	}

}
