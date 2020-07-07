<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 화면</title>
</head>
<body>
<!-- method : 전송방법 <post , get> -->

<form name="frm" method="post" action="nameWriteSub.jsp">
이름   :  <input type="text" name="username"> <br>
주소   :  <input type="text" name="useraddr"> <br>
취미   :  <input type="checkbox" name="hobby" value="축구">축구,
          <input type="checkbox" name="hobby" value="야구">야구,
          <input type="checkbox" name="hobby" value="농구">농구
<input type="submit" value="전송">
<a href="nameWriteSub.jsp?username=hong&useraddr=aabb">데이터전송</a>
</form>



</body>
</html>