<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon2.jsp" %>
<!-- db에서 아이디 비번이 맞나 확인 -->
<%
String userid = request.getParameter("userid");
String pass1 = request.getParameter("pass");

/* 유효성 체크! */
if( userid == null || pass1 == null){
%>
<script>
alert("잘못된 접근입니다.");
location="../emp2_orcl/empList.jsp";
</script>
<% 	
}

String sql = " select count(*) cnt from member ";
	   sql+= " where userid='"+userid+"' and pass='"+pass1+"' ";
	   
ResultSet rs = stmt.executeQuery(sql);
rs.next();

int cnt = rs.getInt("cnt"); // 숫자 -> 1 

if(cnt == 0){
%>
	<script>
	alert("동일한 데이터가 존재하지 않습니다");
	history.back();
	</script>
<% 
	return;
}

sql = " SELECT count(*) cnt FROM member  "
	+ " where userid='"+userid+"' and pass='"+pass1+"' and level1='2' ";  // 관리자인지 아니인지만 파악  level1=2 관리자
	
ResultSet rs1 =stmt.executeQuery(sql);
rs1.next();
cnt = rs1.getInt("cnt");   

// 세션 , 쿠키  둘중 하나로 인증! 
// 공통점: 변수 ; 슈퍼전역변수..!?(내부적으로 어디서나 사용가능)
// 차이점: 변수 저장위치가 다름 (세션:서버, 쿠키:로컬)  로컬 -> 내 pc에 저장됨 ...보안x,,,,,100% 세션사용 	
                             //메모리에 올라감
session.setAttribute("SessionUserId", userid);  // 일반 유저 세션

if(cnt>0){
session.setAttribute("AdminConfirm", "Y"); // 관리자 세션
}
session.setMaxInactiveInterval(60*60); //60분
%>
<script>
alert("<%=userid %>님 로그인 되었습니다.");
location="../emp2_orcl/empList.jsp";
</script>


