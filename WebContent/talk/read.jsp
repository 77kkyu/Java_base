<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp"%>     

<%

String sql=" select content,rdate from talk order by unq desc ";
ResultSet rs=stmt.executeQuery(sql);

%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 가져와서 출력</title>
</head>

<style>

.div1 {
	width:500px;
	height:160px;
	background-color:yellow;

}

</style>

<body>

<div class="div1">
	<%
	
	while(rs.next()){
		String content = rs.getString("content");
		out.print(content+"<br>");
	}
	
	%>
</div>

<!-- <meta http-equiv="refresh" content="2; url=read.jsp"> -->          <!-- 자동호출기능 특정페이지를 자동으로 읽어드림 content="2 컨텐트부분 2초마다 새로고침 -->


</body>
</html>