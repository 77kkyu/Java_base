<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon.jsp" %>

<%

String unq = request.getParameter("unq");
String title = request.getParameter("title");
String name = request.getParameter("name"); 
String pwd = request.getParameter("pwd");
String content = request.getParameter("content");

String sql = " select count(*) as cnt from board ";
       sql+= " where unq='"+unq+"' and pwd='"+pwd+"' ";
       
       ResultSet rs = stmt.executeQuery(sql);
       rs.next();
       int cnt = rs.getInt("cnt");
       
       if( cnt == 0 ){
%>
		<script>
		alert("암호를 확인해주세요");
		histroy.go(-1);
		</script>
		<%
		return;
		}
		
       sql = " update board set ";
       sql+= " title='"+title+"' , ";
       sql+= " name='"+name+"' , ";
       sql+= " content='"+content+"' ";
       sql+= " where unq='"+unq+"' ";
       
       stmt.executeUpdate(sql);
       
		%>
		
		<script>
		alert("수정완료");
		location="testList.jsp";
		</script>