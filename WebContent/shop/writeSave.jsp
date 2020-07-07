<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>

<%
String p_id = request.getParameter("p_id");
String p_name = request.getParameter("p_name");
String p_price = request.getParameter("p_price");
String p_info = request.getParameter("p_info");
String p_date = request.getParameter("p_date");
String company = request.getParameter("company");
String manager_id = request.getParameter("manager_id");

String sql = " insert into product_tbl_10(p_id, p_name, p_price, p_info, p_date, company, manager_id) ";
	   sql+= " values('"+p_id+"' , ";
	   sql+= " '"+p_name+"' , ";
	   sql+= " '"+p_price+"' , ";
	   sql+= " '"+p_info+"' , ";
	   sql+= " '"+p_date+"' , ";
	   sql+= " '"+company+"' , ";
	   sql+= " '"+manager_id+"') ";

int result = stmt.executeUpdate(sql);

if(result > 0){
%>

<script>
alert("상품정보가 저장되었습니다.");
location="index.jsp";
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