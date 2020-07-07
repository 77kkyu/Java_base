<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon2.jsp" %>  

<%
String sessionId = (String) session.getAttribute("SessionUserId");
String adminConfirm = (String) session.getAttribute("AdminConfirm");
String unq = request.getParameter("unq");

if ( sessionId == null || adminConfirm ==null || unq == null){
%>
	<script>
		location = "../member/login.jsp";
	</script>
<% 
return;
}

// research , poll 

String sql = " DELETE from poll where pid = '"+unq+"' ";
stmt.executeUpdate(sql);

sql = " DELETE FROM research where unq = '"+unq+"' ";
stmt.executeUpdate(sql);


%>

<script>
alert("삭제완료");
location="list.jsp?top=poll";
</script>