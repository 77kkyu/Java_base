package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class JavaFile_test1 {

	public static void main(String[] args) throws Exception {
		
		String path = "C:\\자바테스트\\20141125";

		File dir = new File(path);
		File[] names = dir.listFiles();  
		
		for(File file1 : names) { 
			String txt = "";  //한줄저장 변수
			int cnt = 1;      // 줄 번호 
			FileReader fr = new FileReader(file1);
			BufferedReader br = new BufferedReader(fr);
			while(true) {
				if((txt=br.readLine()) != null){//값이 없을때까지 한줄씩 읽는다
					if(cnt == 5) { //카운트를 줌으로써 5번째에서 조건문
						String[] array = txt.split("/");
						System.out.println(array[1]);
					}//cnt 조건문
					cnt++;
				}//조건문
				else {  
					break;
				}// else
				
			}// while문
              
		}// for문
		
	}//메인

}//전체
