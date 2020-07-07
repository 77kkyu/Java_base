<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->

<%@ include file="../include/dbcon2.jsp" %> <!-- db연결 메소드 호출 -->


<%
String userid = (String) session.getAttribute("SessionUserId");

String schedate = request.getParameter("schedate");
String title = request.getParameter("title");  
String pass1 = request.getParameter("pass");
String content = request.getParameter("content"); //기본은 6만5천자까지 들어감 

//제목 패스워드 유효성 체크
if( userid==null || title==null || schedate==null ){
%>
	<script>
	alert("잘못된 접근입니다")
	history.back();
	</script>
<%	
	return;  //jsp 종료
}

//내용 유효성 체크 
int len = content.length();
if( len > 1000 ){
%>
	<script>
	alert("글자 수가 1000자를 넘었습니다")
	history.back();
	</script>
<% 	
	return; //jsp종료
}



String sql = " insert into schedule(unq,schedate,title,pass,content,userid) ";
       sql+= " values(sche_unq.NEXTVAL,'"+schedate+"','"+title+"','"+pass1+"','"+content+"','"+userid+"') ";
       
int result = stmt.executeUpdate(sql);

if(result > 0){
%>
     <script>
     alert("저장완료");
     opener.location.reload();
     location = "scheWrite.jsp";
     </script>
<%
}else{
%>	
    <script>
    alert("저장실패");
    history.back();
    </script>
<%
}
%>    
   



