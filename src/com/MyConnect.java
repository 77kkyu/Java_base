package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.MyConnect;

public class MyConnect {

	public static Statement Connect() throws Exception {
		
		String id = "root";
		String pass = "apmsetup";
		String url = "jdbc:mysql://localhost:3306/apple1?";
		       url +="useUnicode=true&characterEncoding=utf8";
		       
		// 접속 드라이드 연결
		Class.forName("com.mysql.jdbc.Driver");
		
		//DB 접속(로그인) 정보
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		//접속 인스턴스 생성
		Statement stmt = conn.createStatement();
		
		return stmt;
		
	}

}
