<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/dbcon2.jsp" %>

<%
String unq = request.getParameter("unq");

/*String sql1 = " SELECT count(*) cnt FROM research "
			+ " WHERE unq='"+unq+"' ";
ResultSet rs1 = stmt.executeQuery(sql1);
rs1.next();
int cnt = rs1.getInt("cnt");*/

String sql1 = " SELECT title, "
			+ " nvl(q1,' ') q1 , "
			+ " nvl(q2,' ') q2 , "
			+ " nvl(q3,' ') q3 , "
			+ " nvl(q4,' ') q4 , "
		    + " nvl(q5,' ') q5 , "
		    + " nvl(q6,' ') q6 , "
		    + " nvl(q7,' ') q7 , " 
		    + " nvl(q8,' ') q8 , "
		    + " nvl(q9,' ') q9 , "
		    + " nvl(q10,' ') q10  "
			+ " FROM research "
			+ " WHERE unq='"+unq+"' ";      //각 컬럼들 데이터들을 출력 

Statement stmt1 = conn.createStatement();
ResultSet rs1 = stmt1.executeQuery(sql1);
rs1.next();

String title = rs1.getString("title");
String q1 = rs1.getString("q1").trim();
String q2 = rs1.getString("q2").trim();
String q3 = rs1.getString("q3").trim();
String q4 = rs1.getString("q4").trim();
String q5 = rs1.getString("q5").trim();
String q6 = rs1.getString("q6").trim();
String q7 = rs1.getString("q7").trim();
String q8 = rs1.getString("q8").trim();
String q9 = rs1.getString("q9").trim();
String q10 = rs1.getString("q10").trim();

int cnt = 0;
int len = 0;
for(int i=1; i<=10; i++){              
	 len = rs1.getString("q"+i).trim().length();   // 반복문으로 q+i를 함으로써 q1~q10까지 가져옴 거기에 공백을 줄여주고 
	if(len>0) cnt++;   //데이터 있나 없나 확인          
}

String col1 = "", col2="";
for(int i=1; i<=cnt; i++){
	col1 += "a"+i+",";
	col2 += "a"+i+"+";                   
}
col1 = col1.substring(0,col1.length()-1);
col2 = col2.substring(0,col2.length()-1);


String sql2 = " SELECT " + col1 + ", "
		   + " ("+col2+") hap "        //총합계 
           + " from poll "
           + " where pid='"+unq+"' ";    //표가 몇표나 있나 확인 

Statement stmt2 = conn.createStatement();
ResultSet rs2 = stmt2.executeQuery(sql2);
rs2.next();

int hap = rs2.getInt("hap");

%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>설문결과</title>
 </head>
<style>
.g1 {
	width:70%; 
	height:4px; 
	background-color:red;
	float:left;
}

.g2 {
	width:30%; 
	height:4px; 
	background-color:blue;
	float:left;
}

table {
	width:400px;
	border:1px solid #cccccc;
	padding:5px;
}

.title {
	width:388px; height:70px;
	border:1px solid #cccccc;
	margin-bottom:5px;
	padding:5px;
	text-align:center;
	line-height:2.0;
	font-size:16px;
	font-weight:bold;
	font-family:맑은 고딕;
	
}
</style>
 <body>
  <div class="title">
	<%=title %><br>
	<span style="font-size:13px;">(총 <%=hap %>표)</span>
  </div>
  <table>
  	
  		<%
  		for( int i=1; i<=cnt; i++ ) {
  			String qs = rs1.getString("q"+i).trim();  //q컬럼들의 데이터들 출력 받아옴
  			int num = rs2.getInt("a"+i);         // 
  			int per = (int)Math.round(((double)num*100)/hap);
  		%>
  
		<tr>
			<td width="100%" height="2">
				<div><%=qs %></div>
				<div class="g1" style="width:<%=per%>"></div>
				<div><%=num %>표(<%=per %>%)</div>
			</td>
		</tr>
		<tr>
			<td height="5"></td>
		</tr>
		<%
  		}
		%>
  </table>

 </body>
</html>