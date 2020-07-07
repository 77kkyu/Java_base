<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->

<%@ include file="../include/dbcon.jsp" %> <!-- db연결 메소드 호출 -->


<%

String title = request.getParameter("title").trim();  /* .trim= 앞뒤 공백제거 //데이터 입력시 공백으로 받아올수있기때문.. */
String pwd = request.getParameter("pwd").trim();
String name = request.getParameter("name").trim();
String content = request.getParameter("content"); //기본은 6만5천자까지 들어감 

//제목 패스워드 유효성 체크
if( title==null || "".equals(title) || pwd==null || "".equals(pwd) ){
%>
	<script>
	alert("잘못된 접근입니다")
	history.back();
	</script>
<%	
	return;  //jsp 종료
}

//내용 유효성 체크 
int len = content.length();
if( len > 1000 ){
%>
	<script>
	alert("글자 수가 1000자를 넘었습니다")
	history.back();
	</script>
<% 	
	return; //jsp종료
}

String sql = "select ifnull( max(fid),0 )+1 as myfid from reboard";  /* 초기값 ifnull 0으로 표기 */
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int myfid = rs.getInt("myfid");

       sql = " insert into reboard( ";
       sql+= " title, ";
       sql+= " pass, ";
       sql+= " name, ";
       sql+= " content, ";
       sql+= " rdate, ";
       sql+= " fid, ";
       sql+= " thread ) ";
       sql+= " values('"+title+"','"+pwd+"','"+name+"','"+content+"',now(), ";
       sql+= " '"+myfid+"','a' ) ";
       
int result = stmt.executeUpdate(sql);

if(result > 0){
%>
     <script>
     alert("저장완료");
     history.back();  //메세지 띄우고 뒤로가기
     </script>
<%
}else{
%>	
    <script>
    alert("저장실패");
    history.back();
    </script>
<%
}
%>    
   



