<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon2.jsp"%>

<%
String empno = request.getParameter("no");

if(empno==null || "".equals(empno)){  //empno가 안넘오올시 
	out.print(" <script> alert('잘못된 접근입니다');history.back(); </script>");
	
	return; // jsp종료
}

String sql = " delete from emp where empno='"+empno+"' ";

int result = stmt.executeUpdate(sql);


%>

<script>
alert("삭제완료");
location="empList.jsp"; 
</script>
