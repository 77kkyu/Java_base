<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->

<%@ include file="../include/dbcon2.jsp" %> <!-- db연결 메소드 호출 -->

<%

String userid = (String)session.getAttribute("SessionUserId");
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
if( userid == null ){
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


String sql = " update member set ";
	   sql+= " name='"+name+"' , ";
	   sql+= " gender='"+gender+"' , ";
	   sql+= " birthday='"+birthday+"' , ";
	   sql+= " phone='"+phone+"' , ";
	   sql+= " post='"+post+"' , ";
	   sql+= " addr='"+addr+"' , ";
	   sql+= " email='"+email+"' , ";
	   sql+= " edu='"+edu+"' "; 
	   sql+= " where userid='"+userid+"' ";
	   
	   
	   int result= stmt.executeUpdate(sql);
	  
	   if(result>0){
%>
		<script>
      alert("변경완료");
      location="../main/main.jsp";
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