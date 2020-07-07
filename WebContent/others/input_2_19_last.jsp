<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서</title>
</head>
<body>



<form name="frm" method="post" action=""> 
<table border="1" cellpadding="5" width="500" style="BORDER-COLLAPSE:collapse"
                align="center">
<tr>
	<th colspan="2"><font size="6">이 력 서</font></th>
</tr>

                  <!-- 인적사항 -->
                  
<tr>
	<td rowspan="3" width="100"><img src="봄.jpg" width="100" height="100"></td>
	<td>이름: 홍길동</td>
</tr>

<tr>
	<td>생일: 1990년 03월 01일</td>
</tr>

<tr>
	<td>주소: 서울시 종로구</td>
</tr>

                <!-- 학력사항 -->
                
<tr>
	<th colspan="2"><font size="4">학력사항</font></th>
</tr>
    
<tr>
	<td><input type="text" name="aa" size="10"></td>
	<td><input type="text" name="bb" size="60"></td>
</tr>

<tr>
	<td><input type="text" name="cc" size="10"></td>
	<td><input type="text" name="dd" size="60"></td>
</tr>

<tr>
	<td><input type="text" name="ee" size="10"></td>
	<td><input type="text" name="ff" size="60"></td>
</tr>

               <!-- 마지막 -->
             
<tr >
	<td colspan="2" width="100" height="200" align="right" valign="bottom">
	위 내용은 사실임을 증명합니다.<p>홍길동 (인)
	</td>
	<br>
	
</tr>

</table>
</form>

</body>
</html>