<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자신에게 데이터 보내기</title>
</head>
<body>

<form name="frm" method="post" action="selfSubmit.jsp">
이름: <input type="text" name="name">
전번: <input type="text" name="tell">
<input type="submit" value="전송">
</form>



<%
String name = request.getParameter("name");
String tell = request.getParameter("tell");
%>

<%
if((name != null || tell != null)
	&&
    (!"".equals(name) && !"".equals(tell))){// 조건문
%>
 <%=name %>의 전번은 <%=tell %> 입니다.
<% 
	}// 조건문
%>

</body>
</html>