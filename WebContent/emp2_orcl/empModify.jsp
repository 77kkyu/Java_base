<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->

<%@ include file="../include/dbcon2.jsp" %>

<%
String empno = request.getParameter("no");

String sql =" select ename,job,sal,deptno, ";
       sql+= " TO_CHAR(hiredate,'YYYY-MM-DD') as hiredate from emp";
	   sql+=" where empno='"+empno+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();


String ename = rs.getString("ename");
String job = rs.getString("job");
String hiredate = rs.getString("hiredate");
String sal = rs.getString("sal");
String deptno = rs.getString("deptno");

String deptsql = " select deptno,dname from dept ";
ResultSet rs2 = stmt.executeQuery(deptsql);

Statement stmt1 = conn.createStatement(); // 메모리에 올릴 객체 하나더 생성 
String jobSql = " select distinct(job) from emp "; //distinct 중복제거
	   jobSql+= " where job != 'PRESIDENT' "; // 조건 PRESIDENT 빼고 출력
ResultSet rs1 = stmt1.executeQuery(jobSql);


%>    
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> 
  </head>
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
       
       
 <%@ include file="../include/topMenu.jsp" %>
 
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
      
      <div id="jb-content">
        <h2>사원정보입력</h2>         
        <form name="frm" method="post" action="empModifySave.jsp">
        
        <table border="1" width="500" align="center">
        	<tr>
        		<th width="120">사원번호</th>
        		<td width="380"><input type="text" name="empno" value="<%=empno %>" readOnly></td>   
        	</tr>
        	
        	<tr>
        		<th>사원이름</th>
        		<td><input type="text" name="ename" value="<%=ename %>"></td>
        	</tr>
        	
        	<tr>
        		<th>업무</th>
        		<td><select name="job">
        		<%
        		while(rs1.next()){
        		 String job1 = rs1.getString("job");
        			
        		
        		%>    <!-- 가져온 데이터값이랑 비교후 selected 수정할시 원래 데이터 표시 -->
        		<option value="<%=job1%>" <%if(job.equals(job1)) out.print("selected"); %>><%=job1 %></option>
        		<%		
        		}   
        		
        		%>
        		
        		</select></td>
        	</tr>
        	
        	<tr>
        		<th>입사일</th>
        		<td><input type="text" name="hiredate" value="<%=hiredate %>"></td>
        	</tr>
        	
        	<tr>
        		<th>급여</th>
        		<td><input type="text" name="sal" value="<%=sal %>"></td>
        	</tr>
        	
        	<tr>
        		<th>부서</th>
        		
        		<td><select name="deptno" >
        			<%
        			while(rs2.next()){
        				String no = rs2.getString("deptno");
        				String dn = rs2.getString("dname");
        				
        			%>   
        			     			                          <!-- <option value="20" selected -->
        			<option value="<%=no %>" <%if(deptno.equals(no)) out.print("selected");%> ><%=dn %></option>
        			
        			<%
        			}
        			%>
        			</select>
        			</td>
        	</tr>
        	
        	<tr>
        		<th colspan="2">
        			<input type ="submit" value="저장">
        			
        			<input type ="reset" value="취소">
        		</th>
        	</tr>
        	
        	
        </table>
        
        </form>        
      </div>
      
      <div id="jb-sidebar">
        <%@ include file = "../include/sidebar.jsp" %>
      </div>
      
      <div id="jb-footer">
         <%@ include file = "../include/footer.jsp" %> 
      </div>
      
    </div> <!-- container -->
  </body>
</html>