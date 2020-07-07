package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.FileReader;

public class FileCompare {

	public static void main(String[] args) {
		
		String file1 = "C:\\자바테스트\\test1.txt";
		String file2 = "C:\\자바테스트\\test2.txt";
		
		try {
			
			FileReader fr1 = new FileReader(file1);
			BufferedReader br1 = new BufferedReader(fr1);
				
			FileReader fr2 = new FileReader(file2);
			BufferedReader br2 = new BufferedReader(fr2);
			
			String a = ""; //file1의 한줄 내용을 담는 변수
			String b = ""; //file2의 한줄 내용을 담는 변수
			int cnt = 0;   // 라인번호
		   
			while(true) {
				
				if(((a = br1.readLine()) != null) && ((b = br2.readLine())!=null)) {
					cnt++;
					if(! a.equals(b)) { //a 랑 b가 같지 않으면 
						System.out.println(file1 + ":=> "+ cnt +"line:"+a);
						System.out.println(file2 + ":=> "+ cnt +"line:"+b);
						System.out.println();
					}
				}else {
					break;
				}
			}
			
		}catch(Exception e){
			
		}

	}

}
