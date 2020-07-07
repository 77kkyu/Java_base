package post_DB_15;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Statement;

import com.MyConnect;

public class PostInsert {

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		String path = "C:\\TEMP\\post_data.txt";
		FileReader file = new FileReader(path);
		BufferedReader buffer = new BufferedReader(file);
		String rowData="";
		
		while(true) {
			if((rowData=buffer.readLine())!=null) {
				
				String[] aa = rowData.split(",");	
				
				String sql = "INSERT into post_seoul(a1,a2,a3,a4,a5,a6,a7,a8) "
						+ "VALUES( "
						+ "'"+aa[0]+"', "
						+ "'"+aa[1]+"', "  
						+ "'"+aa[2]+"', "
						+ "'"+aa[3]+"', "
						+ "'"+aa[4]+"', "
						+ "'"+aa[5]+"', "
						+ "'"+aa[6]+"', "
						+ "'"+aa[7]+"') ";
				
				
				System.out.println(sql);
				
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					System.out.println("저장완료");
				}else {
					System.out.println("저장실패");
				}
				
				
			}else {
				break;
			}
		}
        file.close();

	}

}
