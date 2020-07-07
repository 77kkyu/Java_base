<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- db연결 -->
<%@ include file="../include/dbcon2.jsp" %>

<!-- 데이터 받기 -->
<%

String title = request.getParameter("title");
String q1 = request.getParameter("q1");
String q2 = request.getParameter("q2");
String q3 = request.getParameter("q3");
String q4 = request.getParameter("q4");
String q5 = request.getParameter("q5");
String q6 = request.getParameter("q6");
String q7 = request.getParameter("q7");
String q8 = request.getParameter("q8");
String q9 = request.getParameter("q9");
String q10 = request.getParameter("q10");
String gubun = request.getParameter("gubun");

String sdate = request.getParameter("sdate");
String edate = request.getParameter("edate");

// sdate 보다 edate 가 더  커야하기 때문에 캘린더사용
Calendar cal1 = Calendar.getInstance();
String[] str = sdate.split("-");  // date타입 값을 스플릿으로 배열로 나눔 
int y = Integer.parseInt(str[0]); 
int m = Integer.parseInt(str[1]);
int d = Integer.parseInt(str[2]);
cal1.set(y, m, d);

Calendar cal2 = Calendar.getInstance();
String[] str2 = edate.split("-");  // date타입 값을 스플릿으로 배열로 나눔 
int y2 = Integer.parseInt(str2[0]); 
int m2 = Integer.parseInt(str2[1]);
int d2 = Integer.parseInt(str2[2]);
cal2.set(y2, m2, d2);

//int result = sdate.compareTo(edate); 비교 메소드 1,0,-1  sdate가 기준  크다 1 같다 0 작다 -1 
int result = cal1.compareTo(cal2);

if (result > 0){
%>
<script>
alert("날짜가 잘못되었습니다");
history.back();
</script>
<%	
return;
}
%>

<!-- sql작성 -->
<%
String sql = " insert into research(unq,title,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,sdate,edate,gubun)";
       sql+= " values(rsch_seq.NEXTVAL,'"+title+"' , ";
       sql+= " '"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"' , ";
       sql+= " '"+q6+"','"+q7+"','"+q8+"','"+q9+"','"+q10+"', ";
       sql+= " '"+sdate+"','"+edate+"','"+gubun+"' ) ";

int result2 = stmt.executeUpdate(sql);

if(result2 > 0){
%>
     <script>
     alert("등록완료");
     location="list.jsp"
     </script>
<%
}else{
%>	
    <script>
    alert("등록실패");
    history.back();
    </script>
<%
}
%>    