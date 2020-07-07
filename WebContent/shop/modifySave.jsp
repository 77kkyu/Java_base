<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon.jsp" %>

<%
String p_id = request.getParameter("p_id");
String p_name = request.getParameter("p_name");
String p_price = request.getParameter("p_price");
String p_info = request.getParameter("p_info");
String p_date = request.getParameter("p_date");
String company = request.getParameter("company");
String manager_id = request.getParameter("manager_id");

String sql = " update product_tbl_10 set ";
	   sql+= " p_name='"+p_name+"' , ";
	   sql+= " p_price='"+p_price+"' , ";
	   sql+= " p_info='"+p_info+"' , ";
	   sql+= " p_date='"+p_date+"' , ";
	   sql+= " company='"+company+"' , ";
	   sql+= " manager_id='"+manager_id+"' ";
	   sql+= " where p_id='"+p_id+"' ";
	   
	   
	   int result = stmt.executeUpdate(sql);
	   if(result > 0){
%>
  <script>
  	alert("수정이 완료 되었습니다.");
  	location="list.jsp";
  </script>
<%
	 }
%>  