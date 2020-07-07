<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글자 입력 저장</title>
</head>
<body onload="document.frm.content.focus();">    <!-- 화면을 열었을때 컨텐트에가서 커서를 가져다 두겠다! -->

<form name="frm" mathod="post" action="writeSave.jsp">

<input type="text" name="content">
<input type="submit" value="전송">

</form>

</body>
</html>