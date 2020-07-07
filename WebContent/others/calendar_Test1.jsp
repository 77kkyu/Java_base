<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캘린더 사용</title>
</head>
<body>

<%
Calendar cal = Calendar.getInstance(); //컨트롤 스페이스 import

int y = cal.get(Calendar.YEAR); //2020
int m = cal.get(Calendar.MONTH)+1; //2
int d = cal.get(Calendar.DATE); //19
%>

<%=y %>/<%=m %>/<%=d %>
<br>

               <!-- String 클래스 객체 사용하기 jsp[1] -->
               
<%
String str1="첫 번째 문장. first string";
String str2="첫 번째 문장. First string";
%>
문자열의 길이 :<%=str1.length() %> <br>
인덱스  5번 위치 값 :<%=str1.charAt(5) %><br>    
first라는 단어의 위치 인덱스 번호 :<%=str1.indexOf("first") %><br>
인덱스번호 5번부터 끝까지 :<%=str1.substring(5) %><br>
인덱스번호 5번부터 9번까지 :<%=str1.substring(5,10) %><br>
두 변수 값이 같은 지 비교 :<%=str1.equals(str2) %><br> <!-- 대문자 구분 -->
           
</body>
</html>