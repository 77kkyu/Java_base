<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<%
String sql = " select ifnull( max(p_id),1000)+1 p_id from product_tbl_10";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String p_id = rs.getString("p_id");

%>
    
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

<script>

function fn_action(){
    var f = document.frm;

	if( f.p_id.value=="" ){
		alert("상품번호가 없습니다.");
		f.p_id.focus();
		return false;  // 자바스크립트 중단!
	}
	
	if( f.p_name.value=="" ){
		alert("상품이름을 입력해주세요.");
		f.p_name.focus();
		return false;
	}
	
	if( f.p_price.value=="" ){
		alert("상품가격을 입력해주세요.");
		f.p_price.focus();
		return false;
	}
	
	if( f.p_info.value=="" ){
		alert("상품내용을 입력해주세요.");
		f.p_info.focus();
		return false;
	}
	
	if( f.p_date.value=="" ){
		alert("날짜를 입력해주세요.");
		f.p_date.focus();
		return false;
	}
	
	if( f.company.value=="" ){
		alert("회사를 입력해주세요.")
		f.company.focus();
		return false;
	}
	
	if( f.manager.value=="" ){
		alert("담당자를 입력해주세요.")
		f.manager.focus();
		return false;
	}
	f.submit();
}
</script>

<body>
	  <!-- header -->
<header>
	<br><br>
	쇼핑몰관리
	<br><br>
	<nav>
	<a href="write.jsp">상품등록</a> &nbsp;&nbsp;&nbsp;  
	<a href="list.jsp">상품목록조회/수정</a> &nbsp;&nbsp;&nbsp;  
	<a href="saleList.jsp">매출현황조회</a> &nbsp;&nbsp;&nbsp;
	<a href="index.jsp">홈으로.</a>
	</nav>
</header>

	  <!-- header -->
	  <!-- section -->
	  
<section>
<div class="title"><br>상품등록</div>
<br><br>
  <form name="frm" method="post" action="writeSave.jsp">
    
	<table border="1" align="center" width="500">
		
		<tr>
			<th colspan="2" style="background:#ffff00;">상품ID</th>
			<td><input type="text" name="p_id" value="<%=p_id %>" readonly ></td>
		</tr>
		<tr>
			<th colspan="2" style="background:#ffff00;">이름</th>
			<td><input type="text" name="p_name"></td>
		</tr>
		<tr>
			<th colspan="2" style="background:#ffff00;">단가</th>
			<td><input type="text" name="p_price"></td>
		</tr>
		<tr height="70">
			<th colspan="2" style="background:#ffff00;">상품정보</th>
			<td><textarea name="p_info" style="width:60%;height:70px;"></textarea></td>
		</tr>
		<tr>
			<th colspan="2" style="background:#ffff00;">등록일자</th>
			<td><input type="text" name="p_date"></td>
		</tr>
		<tr>
			<th colspan="2" style="background:#ffff00;">공급업체</th>
			<td><input type="text" name="company"></td>
		</tr>
		<tr>
			<th colspan="2" style="background:#ffff00;">담당자</th>
			<td><input type="text" name="manager_id"></td>
		</tr>
		
		
	</table>
	<br>
    	<div  align="center">    	
		<td colspan="2">
		<input type="submit" value="등록" onClick="fn_action(); return false;">
		<input type="button" value="조회" onClick="location='list.jsp'">
		</td>		
    	</div>
    </form>
</section>

	   <!-- section -->
       <!-- footer -->
       
<footer>

</footer>

	   <!-- footer -->
	   
</body>
</html>