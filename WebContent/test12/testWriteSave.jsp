<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="../include/dbcon.jsp" %>

<%
String title = request.getParameter("title").trim();
String pwd = request.getParameter("pwd").trim();
String name = request.getParameter("name").trim();
String content = request.getParameter("content");

//제목 패스워드 유효성 체크 
if( title==null || "".equals(title) || pwd==null || "".equals(pwd) ){
%>
<script>
alert("잘못된 접근입니다")
history.back();
</script>
<%
return;
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
return;
}

String sql = " insert into board(title,pwd,name,content,rdate) ";
  	   sql+= " values('"+title+"','"+pwd+"','"+name+"','"+content+"',now()) ";
  	   
int result = stmt.executeUpdate(sql);

if(result > 0){
%>

<script>
alert("저장완료");
history.back();
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