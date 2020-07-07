package post_DB_15;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Calendar;
import java.util.Scanner;

import com.MyConnect;

public class PostMig {

	public static void main(String[] args) throws Exception {
		// 테이블 데이터 조건줘서 옮기기 
		Statement stmt = MyConnect.Connect();  //1객체 
		Statement stmt2 = MyConnect.Connect(); //2객체            객체1개당 execute...
		
		
		Calendar cal = Calendar.getInstance(); //캘린더 객체생성 
		long sTime = cal.getTimeInMillis();
		
		String searchValue = "서울";
		String searchCode = "a2";
		
		String sql = "SELECT * FROM post where "+searchCode+" LIKE '"+searchValue+"%' ";  //서울지역만 출력 
		
		ResultSet rs = stmt.executeQuery(sql);
		
		System.out.println("==============================");
		
		int num = 0;
		while(rs.next()) {
			
			String a1 = rs.getString("a1");
			String a2 = rs.getString("a2");
			String a3 = rs.getString("a3");
			String a4 = rs.getString("a4");
			String a5 = rs.getString("a5");
			String a6 = rs.getString("a6");
			String a7 = rs.getString("a7");
			String a8 = rs.getString("a8");
			
			
			sql = "SELECT count(*) as cnt FROM post_seoul "
					+ "WHERE a1='"+a1+"' and a2='"+a2+"' and a3='"+a3+"' and a4='"+a4+"' "
					+ "and a8='"+a8+"' ";
			
			ResultSet rs2 = stmt2.executeQuery(sql); //2번째 객체 
			
			rs2.next();
			int cnt = rs2.getInt("cnt");   //중복검사 
			if(cnt == 0) {  // 데이터가 있으면 1 이상   없으면 0   데이터가 없으면 값을 넣어주고 있으면 안넣는다. 
				sql= "INSERT INTO post_seoul(a1,a2,a3,a4,a5,a6,a7,a8)"
						+ "values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"')";
			
				stmt.executeUpdate(sql);
				num++;
				
			}

	}
		    cal = Calendar.getInstance();
			long eTime = cal.getTimeInMillis(); //유닉스시간 1970,1,1,0:0:0 
			System.out.println("소요시간: "+(eTime-sTime)/1000);
            System.out.println(num+"개 copy 완료");
             
	}
}
