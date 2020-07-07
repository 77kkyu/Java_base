<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- placeholder 메시지입력후 클릭하면 없어짐  -->
   <!-- email 이상하게 입력시 메세지 띄우기 -->
   <!-- url 이상하게 입력시 메세지 띄우기 -->
   <!-- autocomplete=on/off 사용자가 한번 입력했던 정보 기억후 자동완성 
                          (뒤로가기시)  -->
<form name="frm" autocomplete="on" action="aaa.jsp">
	아이디 <input type="text" name="id" placeholder="아이디를 입력해주세요"><br>
	암호 <input type="password" name="pwd" autocomplete="off"> <br>
	이름 <input type="text" name="name" placeholder="이름입력"><br>
	이메일 <input type="email" id="email"><br>
	웹주소 <input type="url" id="url"><br>
	생일 <input type="date" id="dare"><br>            <!-- ex에서는 안됨 -->
	좋아하는 색 <input type="color" id="color"><br>  <!-- ex에서는 안됨 -->
	점수 <input type="range" id="kor" value="100" step="1"
	                 min="0" max="100"> <br>
	                 
	<input type="submit" value="전송">                 
	

</form>

</body>
</html>