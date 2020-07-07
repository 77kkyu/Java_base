<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
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

<body>
	  <!-- header -->
<header>
	<br><br>
	성적관리
	<br><br>
	<nav>
	<a href="studentWrite.jsp">학생등록</a> &nbsp;&nbsp;&nbsp;  
	<a href="studentList.jsp">학생목록조회/수정</a> &nbsp;&nbsp;&nbsp;  
	<a href="scoreList.jsp">성적조회</a> &nbsp;&nbsp;&nbsp;
	<a href="main.jsp">홈으로.</a>
	</nav>
</header>

	  <!-- header -->
	  <!-- section -->
	  
<section>
<div class="title"><br>성적관리 프로그램</div>

<div class="content">
	<p style="padding-left:10px">프로그램 작성 순서</p>
	<p style="padding-left:10px">
		1.학생정보테이블 생성 <br>
		2.성적정보테이블 생성 <br>
		3.학생정보 입력 화면 프로그램을 작성한다 <br>
		4.학생정보 조회/수정 프로그램을 작성한다 <br>
		5.성적 정보 조회 프로그램을 작성한다 <br>
	</p>
</div>
</section>

	   <!-- section -->
       <!-- footer -->
       
<footer>

</footer>

	   <!-- footer -->
	   
</body>
</html>