package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class Filecopy {
// 텍스트 내용 복사하기
	public static void main(String[] args) {
		
		String path1 = "C:\\자바테스트\\test101.txt";
		String path2 = "C:\\자바테스트\\test102.txt";
		
		try {
			File file1 = new File(path1); //경로 넣어주기 
			File file2 = new File(path2);
				
		 	FileReader fr1 = new FileReader(file1);
			BufferedReader br1 = new BufferedReader(fr1);
				
			FileWriter fr2 = new FileWriter(file2);
			BufferedWriter br2 = new BufferedWriter(fr2);
			
			String lineStr= "";
			
			while(true) {
				if((lineStr=br1.readLine())!=null) {
					br2.write(lineStr);
					br2.newLine();
				}else {
					break;
				}
			}
			br1.close(); br2.close();
			if(file2.exists()) {
				System.out.println("복사 성공");
			}else {
				System.out.println("복사 실패 ");
			}
			
		}catch(Exception e) {
			
		}

	}

}
