<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력화면</title>
</head>
<body>

<%
String username = request.getParameter("username"); //보내는 이름값이랑 동일
String useraddr = request.getParameter("useraddr"); //보내는 주소값이랑 동일 
String hobby[] = request.getParameterValues("hobby"); //체크안하면 null되서 오류
%>                                 
이름:<%=username %> <br>
주소:<%=useraddr %> <br>


<% 
if(hobby != null){
for(int i=0; i<hobby.length; i++){
	out.print(hobby[i]+" ");
	}
}
%>

</body>
</html>