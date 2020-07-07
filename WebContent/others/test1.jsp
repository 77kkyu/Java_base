<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
<%
String str = "안녕하세요";
out.print(str);
%>
<%=str %>

<%
for(int i=1; i<=10; i++){
	//out.print(i+" ");
%>
    <%=i %>
<%	
}
%>

<table border="1">
	<tr>
	<%
	for(int i=1; i<=10; i++){
		%>
		<td>1</td>
		<%
	}
	%>
	 	<td>1</td>
	 	<td>2</td>
	 	<td>3</td>
	</tr>

</table>

</body>
</html>