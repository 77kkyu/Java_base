<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력테스트</title>
</head>
<body>

<table border="0" width="400" ceilspacing="1" bgcolor="#555555">

	<tr bgcolor="#ffffff" align="center">
	<%
	for(int i=1; i<=31; i++){
	%>
		<td width="13%"><%=i %></td>
		<%
		if(i==7 || i==14 || i==21 || i==28){
			out.print("</tr><tr bgcolor=\"#ffffff\" align=\"center\">");
		}
		%>
	<%
	}
	%>
	</tr>

</table>

</body>
</html>