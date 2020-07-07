package File_I_O_study10_11;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DirList {

	public static void main(String[] args)  {
		
		File dir = new File("C:\\APM_Setup");
		                                                        //HH 24시간 표시
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd a HH:MM");
		File[] names = dir.listFiles();
		System.out.println("날짜\t 시간\t 형태\t 크기\t 이름");
		System.out.println("---------------------------------------------");
		
		for(File aa : names) { // 배열          //lastModified 시간 날짜 
			System.out.print(f.format(new Date(aa.lastModified())));
			if(aa.isDirectory()) { //폴더일 경우
				System.out.println("\t<DIR>\t\t\t"+aa.getName());
			}else { // 파일일 경우                
				System.out.println("\t파일\t\t"+aa.length()+"\t"+aa.getName());
			}                                 //length 파일크기
			System.out.println();
		}
		

	}

}
