<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>    
    
<%

String student_no = request.getParameter("student_no");

String sql =" select ";
	   sql+= " student_name , ";
	   sql+= " class_code , ";
	   sql+= " birth_date , "; 
	   sql+= " student_status , ";
	   sql+= " student_grade , ";
	   sql+= " student_tel , ";
	   sql+= " student_addr ";
	   sql+= " from student_tbl_15  ";
	   sql+=" where student_no='"+student_no+"' ";
	   
ResultSet rs = stmt.executeQuery(sql);
rs.next();


String student_name = rs.getString("student_name");
String class_code = rs.getString("class_code");
String birth_date = rs.getString("birth_date");
String student_status = rs.getString("student_status");
String student_grade = rs.getString("student_grade");
String student_tel = rs.getString("student_tel");
String student_addr = rs.getString("student_addr");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록화면</title>
</head>

<style>

body {
	font-family:맑은고딕;
}

header {
	width:1000px;
	height:140px;
	background-color:#555555;
	font-size:25px;
	font-wieght:bold;
	color:#ffffff;
	text-align:center;
	vertical-align:bottom;
	line-heigth:20px;
}

nav{
	background-color:#000000;
	font-size:15px;
	color:#ffffff;
	text-align:left;
	padding:5px;
}

section {
	width:1000px;
	height:500px;
	background-color:#99cc00;
	font-size:13px;
	color:#777777;
	line-heigth:15px;
}

footer {
	width:1000px;
	height:500px;
	font-size:13px;
	color:#cccccc;
}	

a {
	color:#ffffff;
	text-decoration:none;
}

.title {
	width:100%;
	height:50px;
	text-align:center;
	font-size:20px;
	font-weight:bold;
	color:#000000;
}

.content {
	width:100%;
	font-size:17px;
	color:#000000;
	line-heigth:20px;
	paddint:10px;
}
	
</style>

  <script>
  	function fn_action(){
  		
  		/* 데이터 유효성 체크 */
  		
  		var f = document.frm;
  		
  		if( f.student_no.value=="" ){
  			alert("학생번호가 없습니다.");
  			f.student_no.focus();
  			return false;  // 자바스크립트 중단!
  		}
  		if( f.student_name.value=="" ){
  			alert("학생이름을 입력해주세요.");
  			document.frm.student_name.focus(); // 자동커서
  			return false;
  		}
  		if( f.class_code.value=="" ){
  			alert("학과를 입력해주세요."); //2020-11-25
  			f.class_code.focus();
  			return false;
  		}
  		if( f.birth_date.value.length !=10 ){
  			alert("날짜 형식이 틀립니다.")
  			f.birth_date.focus();
  			return false;	
  		}
  		if( f.student_status.value=="" ){
  			alert("학생상태를 체크해주세요")
  		}
  		if( f.student_grade.value==""){
  			f.student_grade.focus();
  			alert("학년을 입력해주세요")
  		}
  		if( f.student_tel.value==""){
  			f.student_tel.focus();
  			alert("전화번호를 입력해주세요")
  		}
  		if( f.student_addr.value==""){
  			f.student_addr.focus();
  			alert("주소를 입력해주세요")
  		}
  		f.submit();
  		
  	}
  </script>

<body>
	  <!-- header -->
<header>
	<br><br>
	성적관리
	<br><br>
	<nav>
	<a href="studentWirte.jsp">학생등록</a> &nbsp;&nbsp;&nbsp;  
	<a href="studentList.jsp">학생목록조회/수정</a> &nbsp;&nbsp;&nbsp;  
	<a href="scoreList.jsp">성적조회</a> &nbsp;&nbsp;&nbsp;
	<a href="main.jsp">홈으로.</a>
	</nav>
</header>

	  <!-- header -->
	  <!-- section -->
	  
<section>
<div class="title"><br>학생등록</div>
<br><br>
  <form name="frm" method="post" action="studentModifySave.jsp">
    
	<table border="1" align="center" >
		<tr  >
			<td colspan="2" style="background-color:#ffff00;">학생번호</td>
			<td><input type="text" name="student_no" readonly value="<%=student_no%>"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">학생명</td>
			<td><input type="text" name="student_name" value="<%=student_name%>"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">학과코드</td>
			<td>
			<input type="checkbox" name="class_code" value="A1">컴퓨터공학
			<input type="checkbox" name="class_code" value="A2">사이버보안
			</td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;" >생년월일</td>
			<td><input type="text" name="birth_date" value="<%=birth_date%>"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">학생상태</td>
			<td>
			<input type="checkbox" name="student_status" value="1">재학   <!-- if문쓰기 checked -->
			<input type="checkbox" name="student_status" value="2">휴학
			<input type="checkbox" name="student_status" value="3">졸업
			</td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">학년</td>
			<td><input type="text" name="student_grade"  value="<%=student_grade%>"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">전화번호</td>
			<td><input type="text" name="student_tel" value="<%=student_tel%>"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color:#ffff00;">주소</td>
			<td><input type="text" name="student_addr" style="width:300px"  value="<%=student_addr%>"></td>
		</tr>
		
		<tr>
		
		<th colspan="2">
        			<input type ="submit" value="저장">
        			
        			<input type ="reset" value="취소">
        		</th>
		</tr>
	</table>
    
    </form>
</section>

	   <!-- section -->
       <!-- footer -->
       
<footer>

</footer>

	   <!-- footer -->
	   
</body>
</html>