
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.Calendar"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력만들기</title>
</head>
<body>

<%
Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR);  //출력 년도
int m = cal.get(Calendar.MONTH); //출력 개월

cal.set(y,m,1); //출력 월의 1일날로 세팅(1일날의 요일을 얻기 위해)

int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK); //1처음 일요일 7마지막 토
int lastDay = cal.getActualMaximum(Calendar.DATE);// 마지막 날짜 //29
%>
             <!-- 날자 세팅  -->

<table border="0" width="350" cellspacing="1" bgcolor="#cccccc">

	<tr bgcolor="#ffffff">	
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>	
	</tr>
	
	<tr bgcolor="#ffffff">
	<%
	int count = 0;
	for(int i=1; i<dayOfWeek; i++){ 
	     out.print("<td></td>");
	     count++; //최종6회 
	}
	for(int d=1; d<=lastDay; d++){  //마지막날까지 생성 
		 count++;
		 out.print("<td>"+d+"</td>");
		 if( count%7 == 0 ){
			 out.print("</tr> <tr bgcolor='#ffffff'>");
		 }
		 
	}
	while(count%7 !=0){  //빈공간 생성 
		 out.print("<td></td>");
		 count++;              
	 }
	%>	
  		
  		
</table>

</body>
</html>