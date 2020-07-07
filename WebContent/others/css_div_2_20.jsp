<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS div태그 Test</title>
</head>

<style>

.div1 {
  background-color:yellow;
  width:300px;
  height:200px;
  border:1px dotted blue; /* px선굵기 solid선 색깔  dotted 점선표현*/
}

.div2 {
	
    background-color:yellow;
  	width:300px;
  	height:200px;
  
	border-top:1px solid blue;
	border-right:10px dotted green;
	border-bottom:20px solid red;
	border-left:5px dotted black;
	
}

</style>

<body>

<!-- div는 눈에보이지않는 박스가 형성되있음 -->
<div class="div2">  
자바스크립트  
</div>  


</body>
</html>