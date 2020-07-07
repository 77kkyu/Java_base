package jumsu_DB_14;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;
public class jumsu_Insert {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		String message = "";
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("===성적표===");
		
		System.out.println("1.번호입력>>");
		int no = scan.nextInt();
		
		
		System.out.print("2.지역입력>>");
		String loc = scan.next();
		
		
		System.out.print("3.아이디입력>>");
		String userid = scan.next();
		
		System.out.print("4.국어점수입력>>");
		int kor = scan.nextInt();
		if(kor < 0 || kor >100) {
			message += "국어점수를 잘못 입력했습니다";
		}
		
		System.out.print("5.영어점수입력>>");
		int eng = scan.nextInt();
		if(eng < 0 || eng >100) {
			message += "영어점수를 잘못 입력했습니다";
		}
		
		if(message.length()>0) {
			System.out.println(message+" ");
		}else {
			String sql = "INSERT INTO jumsu(no,loc,userid,kor,eng) "
					+ "VALUES('"+no+"','"+loc+"','"+userid+"','"+kor+"','"+eng+"')";
			
			int result = stmt.executeUpdate(sql);
			
			 if(result > 0) {
		    	   System.out.println("저장완료");
		       }else {
		    	   System.out.println("저장실패");
		       }
		}
			
		
		
		

	}

}
