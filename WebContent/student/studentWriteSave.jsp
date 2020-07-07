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

String sql = " insert into student_tbl_15(student_no,student_name,class_code,student_status,student_grade,student_tel,student_addr)  ";
	   sql+= " values('"+student_no+"' , ";
	   sql+= " '"+student_name+"' , ";
	   sql+= " '"+class_code+"' , ";
	   sql+= " '"+student_status+"' , ";
	   sql+= " '"+student_grade+"' , ";
	   sql+= " '"+student_tel+"' , ";
	   sql+= " '"+student_addr+"') ";
	   
	   int result = stmt.executeUpdate(sql);

if(result > 0){
%>
     <script>
     alert("학생등록이 완료 되었습니다");
     location="main.jsp"
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