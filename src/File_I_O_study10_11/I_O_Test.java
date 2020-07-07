package File_I_O_study10_11;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.Scanner;

public class I_O_Test {
//파일 생성 입력 
	public static void main(String[] args) {
	  
//		int[] score = {70,80,90};
//		for(int i=0; i<score.length; i++){
//			System.out.print(score[i]);
//			
//		}
//		System.out.println();
//		for(int a : score) { // 사용할 변수 : 배열 
//			//배열 안의 내용을 하나씩 끄집어 내어 a에 집어넣음
//			//배열은 for문 
//			System.out.print(a);
//		}
		
		Scanner scan = new Scanner(System.in);
		while(true) {//반복
		System.out.print("입력할 내용 >>");
		String txt = scan.next();
		if(txt.equals("0")) {
			System.out.println("종료합니다");
			break;
		}
	  //  txt += "\n";  //대행 줄바꿈 
		String fileName = "C:\\자바테스트\\test1.txt";
		try {
			File file = new File(fileName);
			FileWriter fw = new FileWriter(file,true); //기본 default:false; 
			                              //,true = 이어쓰기
			           //FileWriter 100kb 넘으면 느려짐
			BufferedWriter out = new BufferedWriter(fw);//FileWriter 용량제한 해결 
			out.write(txt);     
			out.newLine(); // 이어쓰기 시 줄바뀜 (BufferedWriter 만 쓸수있음)
			out.close();                        
			System.out.println("파일생성 성공");
			
		}catch(Exception e) {
			System.out.println("파일생성 실패");
		}
		
		}//반복
		
		

	}

}
