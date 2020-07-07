<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon.jsp" %>

<%
String unq = request.getParameter("unq");
String pwd = request.getParameter("pwd");

/* 데이터 유효성 체크  */

if( pwd == null || unq == null ){
%>
<script>
alert("잘못된 접근입니다.");
history.back();
</script>
<%
return;   //jsp 종료 
}

String sql = " select thread,fid from reboard ";
	   sql+= " where unq='"+unq+"'  ";
	   
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String thread = rs.getString("thread");  //스레드값 객체에 담아놓기 
String fid = rs.getString("fid"); // fid값 객체에 담아놓기

sql = " select count(*) as cnt from reboard ";
sql+= " where fid='"+fid+"' and thread like '"+thread+"_' ";  // like _ = 문자 한개를 의미함

ResultSet rs1 = stmt.executeQuery(sql);
rs1.next();
int cnt = rs1.getInt("cnt");

// 개수를 확인하여 분기(if문)
if( cnt > 0 ) {  // 업데이트 처리
 	sql = " update reboard set "; 
 	sql+= " title='글쓴이에 의한 삭제' , ";
 	sql+= " content='' ";
 	sql+= " where ";
 	sql+= " unq = '"+unq+"' ";
	
}else {
	sql = " delete from reboard where unq = '"+unq+"' ";
}

stmt.executeUpdate(sql);
%>
<script>
	alert("처리되었습니다.");
	location="rBoardList.jsp";
</script>

