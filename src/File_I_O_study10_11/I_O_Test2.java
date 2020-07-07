package File_I_O_study10_11;

import java.io.File;

public class I_O_Test2 {
//파일 삭제 
	public static void main(String[] args) {
		String path ="C:\\자바테스트\\test1.txt";
		File file = new File(path);
		
		if(file.exists()) {
			if(file.delete()) {  //파일 삭제
				System.out.println("파일삭제 성공");
			}else { 
				System.out.println("파일삭제 실패");
			}
		}else { //파일 존재 x 
			System.out.println("파일이 존재하지 않습니다");
		}
		

	}

}
