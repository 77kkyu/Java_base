package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Foreach_Test3 {

	public static void main(String[] args) throws IOException {
		
		String path = "C:\\자바테스트\\20141125";

		File dir = new File(path);
		File[] names = dir.listFiles();  
		
		for(int i=0; i<names.length; i++) { 
			String txt = "";  //한줄저장 변수
			int cnt = 1;      // 줄 번호 
			FileReader fr = new FileReader(names[i]);
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

	}

}
