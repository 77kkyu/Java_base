<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->

<%@ include file="../include/dbcon.jsp" %>

<%

/* String sql = "select ";
	   sql+= "empno, ";	
	   sql+= "ename, ";
	   sql+= "job, ";
	   sql+= "if(deptno='10','영업', ";
	   sql+= "if(deptno='20','기획', ";
	   sql+= "if(deptno='30','관리','개발'))) dname ";  //sql if문 dname= 알리아스
	   sql+= "from emp "; */
	   
	String sql = " select e.empno,e.ename,e.job,d.dname ";	             
	       sql+= " from emp e,dept d ";
		   sql+= " where e.deptno = d.deptno "; 
		   /* table join = 조건을 걸어줘야함  조인을 많이씀!*/  
		   
	/* String sql = " select empno,ename,job, ";
		   sql+= " ( select dname from dept where deptno=e.deptno ) dname";
		   sql+= " from emp e"; */
		   /* 다른테이블에 있는 데이터 가져오기  셀렉트안에 셀렉트쓰면 좀 느림 */
	   
	   ResultSet rs = stmt.executeQuery(sql);

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
        <form name="frm" method="post" action="empWriteSave.jsp">
        
        <table border="1" width="500" align="center">
        	<tr>
        		<th>번호</th>
        		<th>사원이름</th>
        		<th>업무</th>
        		<th>부서</th>
        	</tr>
        	
        	
        	<%
        	int number = 1;
        	while(rs.next()){
        		String empno = rs.getString("empno");
        		String ename = rs.getString("ename");
        		String job = rs.getString("job");
        		String deptno = rs.getString("dname");
        		
        		/*
        		String dname ="";
        		
        		if(deptno.equals("10")){
        			dname ="영업";
        		}else if(deptno.equals("20")){
        			dname ="기획";
        		}else if(deptno.equals("30")){
        			dname ="관리";
        		}else if(deptno.equals("40")){
        			dname ="개발";
        		}  
        		*/
        		
        	%>
        	<tr align="center">
        		<td><%=number %></td>
        		<td><a href="empDetail.jsp?no=<%=empno%>"><%=ename %></a></td>
        		<td><%=job %></td>
        		<td><%=deptno %></td>
        	</tr>   
        	<%   	
        		number++;
        	}   	
        	%>
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