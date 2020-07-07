<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼/입력/체크 태그</title>
</head>
<body>

<form name="frm" method="post" action="">
아이디:<input type="text" name="id"> <br>
패스워드:<input type="password" name="pwd"> <br>
이름:<input type="text" name="name"> <br>
성별:<input type="radio" name="gender" value="M">남, 
     <input type="radio" name="gender" value="F">여 <br>
생일:<select name="year">
    	
    	<option value="1990">1990년</option>
		<option value="1991">1991년</option>

     </select>
     <select name="month">
    	
    	<option value="1">1월</option>
		<option value="2">2월</option>

     </select><br>
취미:<input type="checkbox" value="축구">축구,
	 <input type="checkbox" value="야구">야구  <br>
 
 하고싶은말:<br><textarea rows="5" cols="50">
 하고싶은말을 적어주세요.
 ---------------------------
 </textarea> <br>    
             <!-- rows세로길이 cols가로길이 -->
     <input type="submit" value="전송"> 
 
</form>

<br>

                    <!-- 회원가입 입력화면 -->
<form name="frm" method="post" action="memverWriteSub.jsp">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<table border="1" width="370" style="BORDER-COLLAPSE:collapse" align="center"
        cellpadding="5">
      
      
	<tr>
	<th width="100" >아이디</th>
	<td>
	<input type="text" name="id" size="40" maxlength="12">
	<input type="button" value="중복체그">
	</td>
	</tr>
	
	<tr>
	<th>패스워스</th>
	<td><input type="password" name="pwd" size="40"></td>
	</tr>
	
	<tr>
	<th >이름</th>
	<td><input type="text" name="name" size="40"></td>
	</tr>
	
	<tr>
	<th >성별</th>
	<td><input type="radio" name="gender" value="M" checked>남, 
     <input type="radio" name="gender" value="F">여
     </td>                                  <!-- checked 미리체크 -->
	</tr>
	
	<tr>
	<th >생일</th>
	<td><select name="year">
    	<option>--</option>
    	<option value="1990">1990년</option>
		<option selected>1991년</option>
           <!-- 셀렉티드 미리선택해있음 -->
     </select>
     <select name="month">
    	<option>--</option>
    	<option >1월</option>
		<option >2월</option>

     </select>
     </td>
	</tr>
	
	<tr>
	<td align="center" colspan="2">
	<input type="submit" value="전송"> 
	<input type="reset" value="재작성"> <!-- 리셋 시킴 -->
	</td>
	</tr>
</table>
	</form>
	
	
<br>


                         <!-- 회원가입 입력화면 -->
     <form name="frm" method="post" action="">
<table border="1" width="600" height="300" style="BORDER-COLLAPSE:collapse"
       cellpadding="5" align="center">
	 
	<tr>
	<th width="100" >제목</th>
	<td><input type="text" name="id" size="40"></td>
	</tr>
	
	<tr>
	<th>패스워드</th>
	<td><input type="password" name="pwd" size="40"></td>
	</tr>
	
	<tr>
	<th >글쓴이</th>
	<td><input type="text" name="name" size="40"></td>
	</tr>
	
	<tr>
	<th>내용</th>
	<td>
	<textarea rows="5" cols="50"></textarea>
	</td>
	</tr>
	
	<tr>
	<td align="center" colspan="2">
	<input type="submit" value="[저장]"> 
	</td>
	</tr>
	
</table>
</form>


</body>
</html>