package Bank_DB_14;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.MyConnect;

public class BankTest {
	
	public static void moneyInput(String no) throws Exception { //입금
		
		Statement stmt = MyConnect.Connect();
		
	} //입금
	
	public static void moneyOutput(String no) throws Exception { // 출금
		
		Statement stmt = MyConnect.Connect();
		
	} // 출금
	
	public static void moneyPrint(String no) throws Exception { // 잔액출력
		
		Statement stmt = MyConnect.Connect();
		String sql = "SELECT money,name FROM bank WHERE no='"+no+"' ";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		int money = rs.getInt("money");
		String name = rs.getString("name");
		
		System.out.println(name+"님의 잔액은 "+money+" 입니다");
		
	} //잔액출력
	

	public static void main(String[] args) throws Exception {
		
		Statement stmt = MyConnect.Connect();
		
		System.out.println("==서비스 구분==");
		System.out.println("1.계좌생성  2.은행볼일");
		System.out.print("번호선택>>");
		
		Scanner scan = new Scanner(System.in);
		
		int number = scan.nextInt();
		
		if(number == 1) {// 1 계좌생성
			//h001 ,h002 
		System.out.println("==은행계좌개설==");
		String sql = "select concat('h',lpad(count(*)+1,3,'0')) as no from bank"; //lpad로 앞 00을 채움 
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		String no = rs.getString("no"); //1
		
		System.out.println("1.회원번호(자동)>>"+no);
		System.out.println("2.회원이름>>");
		String name = scan.next();
		
		System.out.println("3.입금액>>");
		int money = scan.nextInt();
		
		sql ="INSERT INTO bank(no,name,money)"
				+ "VALUES('"+no+"','"+name+"','"+money+"')";
		
		int result = stmt.executeUpdate(sql);
		
		System.out.println(name+"님의 계좌를 생성했습니다");
		
		}else if(number==2){ // 1 계좌생성        else if) 2 은행볼일
			
			String no=""; //전역변수 
			
			while(true) {// 반복문
			
				System.out.println("회원번호입력>>");
			    no = scan.next();
				String sql = "SELECT count(*) as cnt FROM bank "
			               + "WHERE no='"+no+"' ";
				ResultSet rs = stmt.executeQuery(sql);
				rs.next();
				int cnt = rs.getInt("cnt");
				
				if(cnt == 0) { // 없는 회원
					System.out.println("존재하지 않는 회원번호입니다");
				}else{  // 없는 회원             else) //다시입력
				         break;
				         
				} // 다시입력
				
			}// 반복문
			
			System.out.println("1.입금   2.출금   3.잔액확인");
			System.out.print("번호선택>>");
			
		    number = scan.nextInt();
		    if(number == 1) { // 입금하기
		    	moneyInput(no);
		    }else if(number == 2) { // 출금하기
		    	moneyOutput(no);
		    }else if(number == 3) { // 잔액보여주기
		    	moneyPrint(no);
		    } //조건문 마지막
			
			
		} // 2 은행볼일
		
		
		
	}//메인 

}//
