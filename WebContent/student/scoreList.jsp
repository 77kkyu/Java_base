<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>    
    
<%



String sql = " select s.student_name,c.student_no,round(sum(c.score*score_unit)/sum(score_unit),1) result ";
       sql+= " from score_tbl_15 c, student_tbl_15 s ";
       sql+= " where c.student_no = s.student_no ";
       sql+= " group by student_no, c.score_term "; 
           
     ResultSet rs = stmt.executeQuery(sql);
     
     

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적관리</title>
</head>

<style>

body {
	font-family:맑은고딕;
}

header {
	width:1000px;
	height:140px;
	background-color:#555555;
	font-size:25px;
	font-wieght:bold;
	color:#ffffff;
	text-align:center;
	vertical-align:bottom;
	line-heigth:20px;
}

nav{
	background-color:#000000;
	font-size:15px;
	color:#ffffff;
	text-align:left;
	padding:5px;
}

section {
	width:1000px;
	height:500px;
	background-color:#99cc00;
	font-size:13px;
	color:#777777;
	line-heigth:15px;
}

footer {
	width:1000px;
	height:500px;
	font-size:13px;
	color:#cccccc;
}	

a {
	color:#ffffff;
	text-decoration:none;
}

.title {
	width:100%;
	height:50px;
	text-align:center;
	font-size:20px;
	font-weight:bold;
	color:#000000;
}

.content {
	width:100%;
	font-size:17px;
	color:#000000;
	line-heigth:20px;
	paddint:10px;
}
	
</style>

<body>
	  <!-- header -->
<header>
	<br><br>
	성적관리
	<br><br>
	<nav>
	<a href="studentWirte.jsp">학생등록</a> &nbsp;&nbsp;&nbsp;  
	<a href="studentList.jsp">학생목록조회/수정</a> &nbsp;&nbsp;&nbsp;  
	<a href="scoreList.jsp">성적조회</a> &nbsp;&nbsp;&nbsp;
	<a href="main.jsp">홈으로.</a>
	</nav>
</header>

	  <!-- header -->
	  <!-- section -->
	  
<section>
<div class="title"><br>학생 조회/수정</div>
<br><br>
  <form name="frm" method="post" action="studentWriteSave.jsp">
    
	<table border="1" align="center" width="700" style="color:#000000;">
	
	<tr>
        		<th width="100">학번</th>
        		<th width="100" >이름</th>
        		<th width="100">학년 - 학기</th>
        		<th width="100">성적</th>
        		
        		
        		
        	</tr>
        	
        	<%
        	
        	while(rs.next()){
        	String student_name = rs.getString("student_name");	
        	String student_no = rs.getString("student_no");
        
        	
        		
        	%>
        	<tr align="center">
        		<td><%=student_no %></td>
        		<td><%=student_name %></td>
        		<td></td>	
        		<td></td>
        		
        		        		
        	</tr>   
        	<%   	
        		
        	}   	
        	%>
        </table>
		
	</table>
    
    </form>
</section>

	   <!-- section -->
       <!-- footer -->
       
<footer>

</footer>

	   <!-- footer -->
	   
</body>
</html>