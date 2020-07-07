<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- db연결 -->
<%@ include file="../include/dbcon2.jsp" %>

<!-- 데이터 받기 -->
<%
String empno = request.getParameter("empno");
String ename = request.getParameter("ename");
String job = request.getParameter("job");
String hiredate = request.getParameter("hiredate");
String sal = request.getParameter("sal");
String deptno = request.getParameter("deptno");


%>

<!-- sql작성 -->
<%
String sql = " insert into emp(empno,ename,job,hiredate,sal,deptno)";
       sql+= " values('"+empno+"','"+ename+"','"+job+"','"+hiredate+"','"+sal+"','"+deptno+"')";

int result = stmt.executeUpdate(sql);

if(result > 0){
%>
     <script>
     alert("저장완료");
     location="empList.jsp"
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