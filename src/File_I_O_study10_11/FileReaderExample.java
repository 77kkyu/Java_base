package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class FileReaderExample {
// 텍스트 파일을 읽을 때 사용
	// 문자 단위로 읽기 때문에 텍스트가 아닌 데이터는 읽을 수 없다
	public static void main(String[] args) throws Exception {//오류처리를 안함
		String src = "D:\\eclipse-workspace\\myProject\\src\\study1\\test1.java";
		FileReader file = new FileReader(src);
	    BufferedReader br = new BufferedReader(file);
	    String row ="";
	    
	    while(true) {
	    	if((row=br.readLine()) != null) {//파일안에있는걸 한줄씩 가져옴
	    		                         //내용이 있다면 가져온다
	    		System.out.println(row);
	    	}else {
	    		break;
	    	}
	    	
	    }
		

	}

}
