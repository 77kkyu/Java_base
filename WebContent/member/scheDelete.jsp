<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon2.jsp" %>

<%

String date = request.getParameter("date");
String userid = (String) session.getAttribute("SessionUserId");

if(userid == null || date == null){
%>	
 <script>
 alert("로그인 후 이용해주세요.");
 self.close();  //팝업종료
 opener.location = "../member/login.jsp";
 </script>
<%
	return;  // jsp 종료 
}



String sql = " Delete from schedule where userid='"+userid+"' and schedate=to_date('"+date+"') ";

int result = stmt.executeUpdate(sql);


%>    

<script>
alert("삭제완료");
opener.location.reload();
self.close(); 
</script>