<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 스크립</title>
</head>

<script>
function fn_action() { //자바 스크립 함수생성
	
	var id = document.frm.id.value; //값 확인가능
	alert(id+"를 입력했습니다")
	
	/*if(document.frm.id.value == ""){
		alert("아이디를 입력해주세요")  //alert 경고창 나옴 
		return false;  //종료 
	}
	if(document.frm.name.value == ""){
		alert("암호를 입력해주세요") 
		return false;  //종료
	}
	document.frm.submit();*/  //document = 현재창 frm이란 이름을 찾음 
	 						//submit 자바스크립 메소드 
}

</script>

<body>

<form name="frm" method="post" action="aa.jsp">
	<input type="text" name="id">
	<input type="text" name="name">
	<input type="button" value="전송" onClick="fn_action()"> 
	                                                   
</form>

</body>
</html>