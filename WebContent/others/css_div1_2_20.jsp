<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Test2</title>
</head>

<style>

.div11 {
	background:yellow;
	width:200px;
	height:100px
	margin-bottop:10px;
	/*float:left;*/	
}

.div22 {
	background:blue;
	width:200px;
	height:100px
	margin-top:20px;
	/*float:right;*/
}

#wrap {
	width:1000px;
	height:800px;
	background:yellow;
	
}

#header {
	width:1000px;
	height:100px;
	float:left;
	background:pink;
}

#sidebar {
	width:300px;
	height:500px;
	float:left;
	background:blue;
}

#content {
	width:700px;
	height:500px;
	float:left;
	background:red;
}

#footer {
	width:1000px;
	height:100px;
	float:left;
	background:#cccccc;
}


</style>


<body>

<div id="wrap">
	<div id="header"> <!-- header -->
		<table border="0" cellspacing="2"> 
			<tr bgcolor="#cccccc">
				<th width="70">홈</th>
				<th width="70">게시판</th>
				<th width="70">학원소개</th>
			</tr>
		</table>
	</div> <!-- header -->
	
	<div id="sidebar">sidebar</div>
	<div id="content">content</div>
	<div id="footer">footer</div>
</div>

</body>
</html>