<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->
<% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->

<% 
 
 String id = "scott";
 String pass = "1234";
 String url = "jdbc:oracle:thin:@localhost:1521:orcl";
        
 // 접속 드라이드 연결
 Class.forName("oracle.jdbc.driver.OracleDriver");

 //DB 접속(로그인) 정보
 Connection conn = DriverManager.getConnection(url,id,pass);

 //접속 인스턴스 생성
 Statement stmt = conn.createStatement();
 
%>