<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp"%>

<!-- 넘어오는 데이터 받기 -->
<% 

String content = request.getParameter("content");

String sql = " insert into talk(content,rdate) ";
       sql+= " value('"+content+"',now()) ";

stmt.executeUpdate(sql);

%>

<script>

location="write.jsp";

</script>