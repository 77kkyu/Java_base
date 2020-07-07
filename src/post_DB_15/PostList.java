package post_DB_15;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class PostList {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		
		
		String sql2 = "SELECT COUNT(*) as total FROM post";
		ResultSet rs2 = stmt.executeQuery(sql2);
		rs2.next();
		
		
		Scanner scan = new Scanner(System.in);
		System.out.print("페이지 번호를 입력하세요>>>");
		
		int pageNo = scan.nextInt();
		int indexNo = (pageNo-1)*10;
		
		String searchValue = "서울";
		String searchCode = "a2";
		
//		String sql = "SELECT a1,a2,a3,a4,a5,a6,a7,a8 FROM post ORDER BY a2 "         //전체출력 
//				+ "ASC LIMIT "+indexNo+",20";                       
		

		String sql = "SELECT * FROM post where "+searchCode+" LIKE '"+searchValue+"%' ORDER BY a2 ASC LIMIT "+indexNo+",20";  //서울지역만 출력 
			
		ResultSet rs = stmt.executeQuery(sql);
		System.out.println("현재 페이지: "+pageNo);
		
		System.out.println("==============================");
		String addr = "";
		while(rs.next()) {
			
			
			
			String a1 = rs.getString("a1");
			String a2 = rs.getString("a2");
			String a3 = rs.getString("a3");
			String a4 = rs.getString("a4");
			String a5 = rs.getString("a5");
			String a6 = rs.getString("a6");
			String a7 = rs.getString("a7");
			String a8 = rs.getString("a8");
			addr = "["+a1+"]"+" "+a2+" "+a3+" "+a4+" "+a5+" "+a6+" "+a7+" "+a8+"";
			System.out.println(addr);
			
//			System.out.print(rs.getString("a1")+" ");
//			System.out.print(rs.getString("a2")+" ");
//			System.out.print(rs.getString("a3")+" ");
//			System.out.print(rs.getString("a4")+" ");
//			System.out.print(rs.getString("a5")+" ");
//			System.out.print(rs.getString("a6")+" ");
//			System.out.print(rs.getString("a7")+" ");
//			System.out.print(rs.getString("a8"));
//			System.out.println("\n");
			
		}

	}

}
