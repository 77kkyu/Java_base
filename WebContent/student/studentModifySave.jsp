<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ include file="../include/dbcon.jsp" %>
    
<%
String student_no = request.getParameter("student_no");
String student_name = request.getParameter("student_name");
String class_code = request.getParameter("class_code");
String birth_date = request.getParameter("birth_date");
String student_status = request.getParameter("student_status");
String student_grade = request.getParameter("student_grade");
String student_tel = request.getParameter("student_tel");
String student_addr = request.getParameter("student_addr");

String sql = " update student_tbl_15  set ";
sql+= " student_name='"+student_name+"', ";
sql+= " class_code='"+class_code+"', ";
sql+= " birth_date='"+birth_date+"', ";
sql+= " student_status='"+student_status+"', ";
sql+= " student_grade='"+student_grade+"', ";
sql+= " student_tel='"+student_tel+"', ";
sql+= " student_addr='"+student_addr+"' ";
sql+= " where student_no='"+student_no+"' ";

stmt.executeUpdate(sql);
    		   
%>

<script>
alert("수정완료");
location="studentList.jsp";
</script>