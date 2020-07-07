package File_I_O_study10_11;

import java.io.File;

public class JavaFile_test {
// 자바파일 목록 출력
	public static void main(String[] args) throws Exception {
		
		String path = "C:\\자바테스트";
		File dir = new File(path); 
		File[] names = dir.listFiles(); // listfiles 메소드 사용 폴더목록 
		for(File file : names) {
			String fileName = file.getName(); //파일정보중 이름값만 가져옴
			//abc.java , aaaa.java 
			int len = fileName.length();
			String lastName = fileName.substring(len-4,len);
			if(lastName.equals("java")) {
				System.out.println(fileName);
			}
			
		}
		

	}

}
