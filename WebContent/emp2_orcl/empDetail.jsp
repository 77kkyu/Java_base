<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->

<%@ include file="../include/dbcon2.jsp" %>

<%
String empno = request.getParameter("no");

String sql =" select ename,job,sal,deptno, ";
       sql+=" TO_CHAR(hiredate,'YYYY-MM-DD') as hiredate from emp"; // TO_CHAR 날짜 맞추기 
	   sql+=" where empno='"+empno+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();

String ename = rs.getString("ename");
String job = rs.getString("job");
String hiredate = rs.getString("hiredate");
String sal = rs.getString("sal");
String deptno = rs.getString("deptno");

String dname = "";
String deptSql = " select deptno,dname from dept ";
ResultSet rs2 = stmt.executeQuery(deptSql);
while(rs2.next()){
	String no = rs2.getString("deptno");
	String dn = rs2.getString("dname");
	if(deptno.equals(no)){
		dname = dn;
	}
}


%>    
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> 
  </head>
  
   <script>
  
  function fn_delete(){
	  
	  var result = confirm("삭제하시겠습니까?")
	  if(result == true){
		  location="empDelete.jsp?no=<%=empno%>";
	  }
  }
  
  </script>
  
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
       
       
 <%@ include file="../include/topMenu.jsp" %>
 
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
      
      <div id="jb-content">
        <h2>사원정보입력</h2>         
        <form name="frm" method="post" action="empWriteSave.jsp">
        
        <table border="1" width="500" align="center">
        	<tr>
        		<th whide="120">사원번호</th>
        		<td whide="380"><%=empno %></td>   
        	</tr>
        	
        	<tr>
        		<th>사원이름</th>
        		<td><%=ename %></td>
        	</tr>
        	
        	<tr>
        		<th>업무</th>
        		<td><%=job %></td>
        	</tr>
        	
        	<tr>
        		<th>입사일</th>
        		<td><%=hiredate %></td>
        	</tr>
        	
        	<tr>
        		<th>급여</th>
        		<td><%=sal %></td>
        	</tr>
        	
        	<tr>
        		<th>부서</th>
        		<td><%=dname %></td>
        	</tr>
        	
        	<tr>
        		<th colspan="2">
        			<input type ="button" value="목록" onClick="location='empList.jsp'">
        			<input type ="button" value="수정" onClick="location='empModify.jsp?no=<%=empno %>'">
        			<input type ="button" value="삭제" onClick="fn_delete()">
        		</th>
        	</tr>
        	
        	
        </table>
        
        </form>        
      </div>
      
      <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
      
    </div> <!-- container -->
  </body>
</html>