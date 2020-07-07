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

String sqlPass = " select count(*) as cnt from schedule ";
       sqlPass+= " where userid='"+userid+"' and pass='"+pass1+"' ";
       
       ResultSet rs = stmt.executeQuery(sqlPass);
       rs.next();
       int cnt = rs.getInt("cnt");
       
       if(cnt == 0){
    	   %>
    	   <script>
    	   alert("암호를 확인해주세요");
    	   history.go(-1);
    	   </script>
    	   <% 
    	   return;
       }
       
       
       
       
       

String sql = " update schedule set title='"+title+"',content='"+content+"' ";
       sql+= " where userid='"+userid+"' and schedate=to_date('"+schedate+"') ";
 
       
int result = stmt.executeUpdate(sql);

if(result > 0){
%>
     <script>
     alert("저장완료");
     opener.location.reload();
     self.close(); 
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
   

