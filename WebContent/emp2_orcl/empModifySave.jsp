<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon2.jsp" %>

<%
String empno = request.getParameter("empno");
String ename = request.getParameter("ename");
String job = request.getParameter("job");
String hiredate = request.getParameter("hiredate");
String sal = request.getParameter("sal");
String deptno = request.getParameter("deptno");

String sql = " update emp set ";
       sql+= " ename='"+ename+"', ";
       sql+= " job='"+job+"', ";
       sql+= " hiredate='"+hiredate+"', ";
       sql+= " sal='"+sal+"', ";
       sql+= " deptno='"+deptno+"' ";
       sql+= " where empno='"+empno+"' ";
       
stmt.executeUpdate(sql);
    		   
%>

<script>
alert("수정완료");
location="empList.jsp";
</script>