<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<%

String	sql = " select member_id,sum(sale_qty*sale_price) as hap ";
	    sql+= " from sale_tbl_10 ";
	    sql+= " group by member_id order by hap desc limit 0,1 ";

ResultSet rs1 = stmt.executeQuery(sql);
rs1.next();
String member_id = rs1.getString("member_id");   /* 데이터 먼저 저장 */
String member_hap = rs1.getString("hap");


	   sql = " select sale_date,sum(sale_qty*sale_price) as hap ";  /* 다음 sql작성 */
	   sql+= " from sale_tbl_10  ";
       sql+= " group by sale_date order by sale_date desc ";
       
       ResultSet rs = stmt.executeQuery(sql);

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출현황</title>
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
	<a href="Write.jsp">상품등록</a> &nbsp;&nbsp;&nbsp;  
	<a href="list.jsp">상품목록조회/수정</a> &nbsp;&nbsp;&nbsp;  
	<a href="saleList.jsp">매출현황조회</a> &nbsp;&nbsp;&nbsp;
	<a href="index.jsp">홈으로.</a>
	</nav>
</header>

	  <!-- header -->
	  <!-- section -->
	  
<section>
<div class="title"><br>매출현황</div>
<br><br>
  <form name="frm" method="post" action="writeSave.jsp">
    
	<table border="1" align="center" width="500">
	
	<tr>
		<th>판매일자</th>
		<th>판매금액</th>	
	</tr>
	
	<% 
	while(rs.next()){
	String sale_date = rs.getString("sale_date");
	String hap = rs.getString("hap");
	%>
	
	<tr align="center">
		<td><%=sale_date %></td>
		<td><%=hap %></td>
	</tr>
	
	<% 
	}
	%>
	
	</table>
	
	<p align="center">
	 <%=member_id %> <%=member_hap %>
	</p>
	
    </form>
</section>

	   <!-- section -->
       <!-- footer -->
       
<footer>

</footer>

	   <!-- footer -->
	   
</body>
</html>