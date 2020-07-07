<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>  

<%
int unit = 5;
String viewPage = request.getParameter("viewPage");
if( viewPage == null ){
	viewPage = "1";
}

String totalSql = " select count(*) total from emp ";
ResultSet rs2 = stmt.executeQuery(totalSql);
rs2.next();
int total = rs2.getInt("total");
int totalPage = (int)Math.ceil((double)total/unit);
// 1(viewPage)->1 2->11 3->21
int startNo = ( Integer.parseInt(viewPage) - 1 ) * unit +1;
int endNo = startNo + unit-1;
 
String sql = " select b.* from ( ";                                         
	   sql+= " select rownum rn, a.* from( ";
       sql+= " select e.empno,e.ename,TO_CHAR(e.hiredate,'YYYY-MM-DD') hiredate,e.job,d.dname from emp e, dept d ";
	   sql+= " where e.deptno = d.deptno "; 
	   sql+= " order by hiredate desc ) a ) b ";
	   sql+= " where rn >= "+startNo+"  and rn <= "+endNo+" ";
	   
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
      
      <div id="jb-content" style="text-align:center;">
        <h2>사원목록</h2>         
        
        <p style="width:600px; text-align:right;">
        	<input type="button" value="글쓰기" onClick="location='empWrite.jsp'">
        </p>
        
        <table border="1" width="500" align="center">
        	<tr>
        		<th>번호</th>
        		<th>사원이름</th>
        		<th>업무</th>
        		<th>부서</th>
        		<th>입사일</th>
        	</tr>
        	
        	
        	<%
        	int number = 1;
        	while(rs.next()){
        		String empno = rs.getString("empno");
        		String ename = rs.getString("ename");
        		String job = rs.getString("job");
        		String dname = rs.getString("dname");
        		String hiredate = rs.getString("hiredate");
        		int rn = rs.getInt("rn");
        		
        		
        	%>
        	<tr align="center">
        		<td><%=rn %></td>
        		<td><a href="empDetail.jsp?no=<%=empno%>"><%=ename %></a></td>
        		<td><%=job %></td>
        		<td><%=dname %></td>
        		<td><%=hiredate %></td>
        	</tr>   
        	<%   	
        		number++;
        	}   	
        	%>
        </table>
        
        <p>
        	<%
        	for(int i=1; i<=totalPage; i++){
        	%>
        	    <a href="empList.jsp?viewPage=<%=i %>"><%=i %></a>  <!-- 뷰페이지를 통함..  -->
        	<% 
        	}
        	%>
        </p>
              
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