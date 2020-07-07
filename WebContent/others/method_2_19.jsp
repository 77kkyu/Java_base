<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!  
//접근지정자 리턴타입 메소드이름(매개변수) {}
public int multi(int a, int b) { 
	int c=a*b;
	return c;
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메소드</title>
</head>
<body>

10 * 25 = <%=multi(10,25) %>
<br>

<!-- 메소드는 주로 자바스크립트에서 사용함  jsp에서는 잘 안씀 -->


</body>
</html>