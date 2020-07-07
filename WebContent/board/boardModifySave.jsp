<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>
               
               <!-- 게시물 수정하기 -->
<%
     
String unq = request.getParameter("unq");
String title = request.getParameter("title");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String content = request.getParameter("content");

// unq,pwd 값을 -> sql에 적용 개수출력 같은 데이터가 있나 확인

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

       sql = " update board set ";
	   sql+= " title='"+title+"', ";
       sql+= " name='"+name+"', ";
	   sql+= " content='"+content+"' ";
	   sql+= " where unq='"+unq+"' ";
	   
stmt.executeUpdate(sql);

%>

<script>

alert("수정완료");
location="boardList.jsp";

</script>