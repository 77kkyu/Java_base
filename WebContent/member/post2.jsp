<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon2.jsp" %>

<%
String dong = request.getParameter("dong");


if( dong == null ){
%>
 <script>
 alert("동을 입력해 주세요.");
 history.back();
 </script>
<% 
return;
}
%>

<%
String totSql =  " SELECT count(*) total from post ";
	   totSql+= " where dong like '%"+dong+"%' or ri like '%"+dong+"%' ";
	   
	   ResultSet totrs = stmt.executeQuery(totSql);
	   totrs.next();
	   int total = totrs.getInt("total");

String sql = " SELECT post,sido,sigun,dong,ri,bunji,others from post ";
	   sql+= " where dong like '%"+dong+"%' or ri like '%"+dong+"%' ";
	   
ResultSet rs = stmt.executeQuery(sql);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호 찾기</title>
</head>
<style>

.div1 {
	width:370px;
	height:110px;
	border:1px solid #777777;
	margin:3px;  /* 외부간격 */
	padding:5px; /* 내부간격 */ 
	text-align:center;
	vartical-align:middle;
	line-height:1.6;
	font-size:15px;
	font-family:맑은 고딕;
	color:#333333;
}

</style>

<script>
function fn_action() {
	var f = document.frm;
	var value = f.address.value;
	// [00000] 서울시 마포구 망원2동 ~~~ 값 확인 
	var array = value.split(" ");  //분리 
	var post = array[0];  //[00000]
	post = post.replace('[',''); //치환
	post = post.replace(']','');
	
	var address = value.replace(array[0],''); //주소에 넣어야하기때문에 post는 공백으로 바꿔줌 
	
	opener.frm.post.value = post;        // opener = 열려있는창에 데이터 보내기
	opener.frm.addr.value = address;
	
	self.close();
	
}
</script>

<body>

<div class="div1">
<p>
	<%=total %>개 검색되었습니다.
</p>
<form name="frm" method="post" action="memberWrite.jsp">

<select name="address">
	<%
	while(rs.next()){
		String post = rs.getString("post");
		String sido = rs.getString("sido");
		String sigun = rs.getString("sigun");
		String dong1 = rs.getString("dong");
		String ri = rs.getString("ri");
		String bunji = rs.getString("bunji");
		String others = rs.getString("others");
		
		String addr = "["+post+"]"+" "+sido+" "+sigun+" "+dong1+" "+ri+" "+bunji+" "+others; 
		//전체 묶어서 표시 
		
	
	%>
	<option value="<%=addr%>"><%=addr %></option>	
	<% 
	}
	%>
</select>

<button type="button" onClick="fn_action()">적용</button>

</form>
</div>

</body>
</html>