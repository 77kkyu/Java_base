<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>  <!-- 모든 클래스 허용 -->

<%@ include file="../include/dbcon.jsp" %> <!-- db연결 메소드 호출 -->


<%
String unq = request.getParameter("unq"); // 본글의 unq값을 받아옴
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

String myfid = "";
String mythread = "";

String sql2 = " select fid,thread from reboard where unq='"+unq+"' ";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();

myfid = rs2.getString("fid");

String pthread = rs2.getString("thread"); //부모 스레드

String sql3 = " select ifnull(max(thread),'') as thread from reboard where fid='"+myfid+"' and length(thread) = length('"+pthread+"')+1 ";
                         //max가 없을경우 null방지                              
ResultSet rs3 = stmt.executeQuery(sql3);
rs3.next();

String maxThread = rs3.getString("thread");

// a+"a" -> aa
if("".equals(maxThread) ){        //첫글 
	mythread = pthread + "a";
}else {
	// ab 
	String a1 = maxThread.substring(0,maxThread.length()-1 );
	char a2 = maxThread.charAt(maxThread.length()-1 );
	a2++;
	mythread = a1+a2;
}

String sql = " insert into reboard( ";
       sql+= " title, ";
       sql+= " pass, ";
       sql+= " name, ";
       sql+= " content, ";
       sql+= " rdate, ";
       sql+= " fid, ";
       sql+= " thread ) ";
       sql+= " values('"+title+"','"+pwd+"','"+name+"','"+content+"',now(), ";
       sql+= " '"+myfid+"','"+mythread+"' ) ";
       
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
   



