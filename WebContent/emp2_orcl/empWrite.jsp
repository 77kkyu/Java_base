<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>

<%

//orcle ifnull -> nvl
String sql =" SELECT nvl(max(empno),1000)+1 empno FROM emp ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String empno = rs.getString("empno");


String deptsql = " select deptno,dname,loc from dept ";
	   deptsql+= " order by deptno asc ";	
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
  
  <script>
  	function fn_action(){
  		
  		/* 데이터 유효성 체크 */
  		
  		var f = document.frm;
  		
  		if( f.empno.value=="" ){
  			alert("사원번호가 없습니다.");
  			return false;  // 자바스크립트 중단!
  		}
  		if( f.ename.value=="" ){
  			alert("사원이름을 입력해주세요.");
  			document.frm.ename.focus(); // 자동커서
  			return false;
  		}
  		if( f.hiredate.value=="" ){
  			alert("입사일을 입력해주세요."); //2020-11-25
  			f.hiredate.focus();
  			return false;
  		}
  		if( f.hiredate.value.length !=10 ){
  			alert("날짜 형식이 틀립니다.")
  			f.hiredate.focus();
  			return false;	
  		}
  		f.submit();
  		
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
        		<th>사원번호</th>
        		<td><input type="text" name="empno" readonly value="<%=empno%>"></td>   <!-- readonly = 변경 불가 -->
        	</tr>
        	
        	<tr>
        		<th>사원이름</th>
        		<td><input type="text" name="ename"></td>
        	</tr>
        	
        	<tr>
        		<th>업무</th>
        		<td><select name="job">
        		<%
        		while(rs1.next()){
        		 String job = rs1.getString("job");
        			
        		
        		%>
        		<option value="<%=job%>"><%=job %></option>
        		<%		
        		}   
        		
        		%>
        		
        		</select>
        		</td>
        	</tr>
        	
        	<tr>
        		<th>입사일</th>
        		<td><input type="text" name="hiredate"></td>
        	</tr>
        	
        	<tr>
        		<th>급여</th>
        		<td><input type="text" name="sal"></td>
        	</tr>
        	
        	<tr>
        		<th>부서</th>
        		<td><select name="deptno">
        			<%
        			while(rs2.next()){
        				String deptno = rs2.getString("deptno");
        				String dname = rs2.getString("dname");
        				
        			%>   
        			     			
        			<option value="<%=deptno%>"><%=dname %></option>
        			
        			<%
        			}
        			%>
        			</select>
        		</td>
        	</tr>
        	
        	<tr>
        		<th colspan="2">
        			<input type ="submit" value="저장" onClick="fn_action(); return false;"> <!-- return false = 에러체크시 프로그램 중단 -->
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