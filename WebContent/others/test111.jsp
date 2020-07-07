<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border=1 width="500" style="BORDER-COLLAPSE:collapse">

	<tr align="center">
      <%
      int  cnt=0;
      for(int i=1; i<=2; i++){
    	  out.print("<td>"+" "+"</td>");
    	  cnt++;
      }
      %>
      <%
      for(int a=1; a<=12; a++){
    	  out.print("<td>"+a+"</td>");
    	  cnt++;
    	  if(cnt%3==0){
    		  out.print("</tr> <tr bgcolor='#ffffff'>");
    	  }
    	
      }
      while(cnt%3 != 0){
    	  out.print("<td></td>");
    	  cnt++;
      }
      %>
	</tr>


</table>


</body>
</html>