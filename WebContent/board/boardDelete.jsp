<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>

<%

String unq = request.getParameter("unq");
String pwd = request.getParameter("pwd");

String sql = " select count(*) as cnt from board ";          //unq값이 가지고있는 pwd 값이 맞는지 확인 
sql+= " where unq='"+unq+"' and pwd='"+pwd+"' ";

ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");              

if( cnt==0 ){
	   %>
	   	<script>
	   	alert("암호를 확인해주세요");
	   	history.go(-1);
	   	</script>
	   <% 
	   return;		   
}


sql = " Delete from board where unq='"+unq+"' ";

int result = stmt.executeUpdate(sql);

%>    

<script>
alert("삭제완료");
location="boardList.jsp"; 
</script>
