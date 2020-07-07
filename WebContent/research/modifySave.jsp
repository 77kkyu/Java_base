<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>  

<%
String unq = request.getParameter("unq");
String title = request.getParameter("title");
String q1 = request.getParameter("q1");
String q2 = request.getParameter("q2");
String q3 = request.getParameter("q3");
String q4 = request.getParameter("q4");
String q5 = request.getParameter("q5");
String q6 = request.getParameter("q6");
String q7 = request.getParameter("q7");
String q8 = request.getParameter("q8");
String q9 = request.getParameter("q9");
String q10 = request.getParameter("q10");
String sdate = request.getParameter("sdate");
String edate = request.getParameter("edate");
String gubun = request.getParameter("gubun");

String sql = " UPDATE research SET "
		   + " title='"+title+"' , "
		   + " q1='"+q1.trim()+"' , "
		   + " q2='"+q2.trim()+"' , "
		   + " q3='"+q3.trim()+"' , "
		   + " q4='"+q4.trim()+"' , "
		   + " q5='"+q5.trim()+"' , "
	       + " q6='"+q6.trim()+"' , "
		   + " q7='"+q7.trim()+"' , "
		   + " q8='"+q8.trim()+"' , "
		   + " q9='"+q9.trim()+"' , "
		   + " q10='"+q10.trim()+"' , "
		   + " sdate='"+sdate+"' , "
		   + " edate='"+edate+"' , "
		   + " gubun='"+gubun+"' "
		   + " WHERE unq='"+unq+"' ";

stmt.executeUpdate(sql);																			 
%>
<script>

alert("수정완료");
location="list.jsp";

</script>