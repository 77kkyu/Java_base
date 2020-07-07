<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->

<%@ include file="../include/dbcon2.jsp" %> <!-- db연결 메소드 호출 -->

<%

String userid = request.getParameter("userid");
String pass1 = request.getParameter("pass");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String birthday = request.getParameter("birthday");
String phone = request.getParameter("phone");
String post = request.getParameter("post");
String addr = request.getParameter("addr");
String email = request.getParameter("email");
String edu = request.getParameter("edu");

%>

<% 
if( userid == null || pass1 == null || name == null || gender == null || birthday == null ){
%>
<script>
	alert("잘못된 접근입니다");
	history.go(-1);
</script>
<%
return;
}
%>

<% 


String sql = " insert into member( ";
	   sql+= " userid , ";
	   sql+= " pass , ";
	   sql+= " name , ";
	   sql+= " gender , ";
	   sql+= " birthday , ";
	   sql+= " phone , ";
	   sql+= " post , ";
	   sql+= " addr , ";
	   sql+= " email , ";
	   sql+= " edu , ";
	   sql+= " state ) ";
	   sql+=         " values( ";
	   sql+= " '"+userid+"' , ";
	   sql+= " '"+pass1+"' , ";
	   sql+= " '"+name+"' , ";
	   sql+= " '"+gender+"' , ";
	   sql+= " '"+birthday+"' , ";
	   sql+= " '"+phone+"' , ";
	   sql+= " '"+post+"' , ";
	   sql+= " '"+addr+"' , ";
	   sql+= " '"+email+"' , ";
	   sql+= " '"+edu+"' , "; 
	   sql+= " 'Y' ) ";
	   
	   
	   int result= stmt.executeUpdate(sql);
	  
	   if(result>0){
%>
		<script>
      alert("회원정보 저장 완료");
      history.back();
      </script>
<%    
    }else{
%>    	
		<script>
    	alert("회원정보 저장 실패");
    	history.back();
    	</script>
<%     	
    }
	   %>
