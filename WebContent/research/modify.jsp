<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    <%@ include file = "../include/dbcon2.jsp" %>

<%
String sessionId4 = (String) session.getAttribute("SessionUserId");
String adminConfirm4 = (String) session.getAttribute("AdminConfirm");
String unq = request.getParameter("unq");

if ( sessionId4 == null || adminConfirm4 ==null || unq == null){
%>
	<script>
		location = "../member/login.jsp";
	</script>
<% 
return;
}

String sql = " SELECT title , "
		   + " nvl(q1,' ') q1 , "
		   + " nvl(q2,' ') q2 , "
		   + " nvl(q3,' ') q3 , "
		   + " nvl(q4,' ') q4 , "
		   + " nvl(q5,' ') q5 , "
		   + " nvl(q6,' ') q6 , "
		   + " nvl(q7,' ') q7 , "
		   + " nvl(q8,' ') q8 , "
		   + " nvl(q9,' ') q9 , "
		   + " nvl(q10,' ') q10 , "
 		   + " to_char(sdate,'yyyy-mm-dd') sdate , "
 		   + " to_char(edate,'yyyy-mm-dd') edate, gubun "
		   + " FROM research WHERE unq = '"+unq+"' ";

ResultSet rs = stmt.executeQuery(sql);
rs.next();
String title = rs.getString("title");
String q1 = rs.getString("q1");
String q2 = rs.getString("q2");
String q3 = rs.getString("q3");
String q4 = rs.getString("q4");
String q5 = rs.getString("q5");
String q6 = rs.getString("q6");
String q7 = rs.getString("q7");
String q8 = rs.getString("q8");
String q9 = rs.getString("q9");
String q10 = rs.getString("q10");
String sdate = rs.getString("sdate");
String edate = rs.getString("edate");
String gubun = rs.getString("gubun");

%>
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>설문등록화면</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
    <link rel="stylesheet" href="../css/jquery-ui.css">  <!-- 달력소스 -->
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
  
    
  </head>
  
   <script>
  $( function() {
    $( "#sdate" ).datepicker ({  //# 아이디 값을 말하는것 
    changeMonth: true,
    changeYear: true
    });
  } );
  
  $( function() {
	    $( "#edate" ).datepicker ({  //# 아이디 값을 말하는것 
	    changeMonth: true,
	    changeYear: true
	    });
	  } );
  </script>
  
 <script>
 	function fn_Submit(){
 		/* 데이터 유효성  체크 */
 		var f = document.frm;
 		
 		if( f.title.value=="" ){
  			alert("설문제목을 입력해주세요.");
  			f.title.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		if( f.q1.value=="" ){
  			alert("문항을 하나라도 입력해주세요.");
  			f.q1.focus();
  			return false;  // 자바스크립트 중단!
  		} 
 		if( f.sdate.value=="" ){
  			alert("시작날짜를 설정해주세요.");
  			f.sdate.focus();
  			return false;  // 자바스크립트 중단!
  		} 		
 		if( f.edate.value=="" ){
  			alert("끝나는 날짜를 설정해주세요.");
  			f.edate.focus();
  			return false;  // 자바스크립트 중단!
  		} 		
 		f.submit();
 		
 	}
 	
 </script>
  
  <style>
  textarea {
	  width:96%;
  	  height:50px;
  	  padding:5px;
  	  font-size:14px;
  }
  
  input {
  	width:96%;
  	padding-left:5px;	
  }
  </style>
  
  <body>
               
                <!-- 액티비티 연결 부분 시작 -->
                
    <div id="jb-container">
      <div id="jb-header">
     
     	<%@ include file="../include/topMenu.jsp"  %>
     
      </div>
           
           <!--  액티비티 연결 부분 끝 -->
      			
      				
     			<!-- 회원가입 작성 시작부분 && content -->
     			
      <div id="jb-content">
                  
                  <!-- 회원가입 작성 시작부분 -->
                  
        <h2 style="text-align:left">설문등록화면</h2>                 
            
<form name="frm" method="post" action="modifySave.jsp">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<input type="hidden" name="unq" value="<%=unq%>">
<table class="mtable" style="BORDER-COLLAPSE:collapse" align="center">
    
	<tr>
	<th class="mtd">설문제목</th>
	<td class="mtd"><textarea name="title"><%=title %></textarea> </td>
	</tr>
	
	<tr>
	<th class="mtd">문항1</th>
	<td class="mtd"><input type="text" name="q1" value="<%=q1%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항2</th>
	<td class="mtd"><input type="text" name="q2" value="<%=q2%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항3</th>
	<td class="mtd"><input type="text" name="q3" value="<%=q3%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항4</th>
	<td class="mtd"><input type="text" name="q4" value="<%=q4%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항5</th>
	<td class="mtd"><input type="text" name="q5" value="<%=q5%>"></td>
	</tr>

	<tr>
	<th class="mtd">문항6</th>
	<td class="mtd"><input type="text" name="q6" value="<%=q6%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항7</th>
	<td class="mtd"><input type="text" name="q7" value="<%=q7%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항8</th>
	<td class="mtd"><input type="text" name="q8" value="<%=q8%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항9</th>
	<td class="mtd"><input type="text" name="q9" value="<%=q9%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항10</th>
	<td class="mtd"><input type="text" name="q10" value="<%=q10%>"></td>
	</tr>
	<tr>
	
	<tr>
	<th class="mtd">설문기간</th>
	<td class="mtd"><input type="text" name="sdate" id="sdate" style="width:100px;" value="<%=sdate%>"> ~
		            <input type="text" name="edate" id="edate" style="width:100px;" value="<%=edate%>"> 
    </td>
	</tr>
	
	<tr>
	<th class="mtd">상태</th>
	<td class="mtd"><select name="gubun">
						<option value="1" <%if("1".equals(gubun)) out.print("selected"); %>>비공개</option>
						<option value="2" <%if("2".equals(gubun)) out.print("selected"); %>>공개</option>
					</select></td>
	</tr>
	<tr>
	<td align="center" colspan="2" style="line-height:2.0;">
	<input class="button1" type="submit" value="전송"  onClick="fn_Submit(); return false;"> 
	
	</td>
	</tr>
</table>
	</form>
      </div>
      
                      <!-- 회원가입 연결부분 끝 && content-->
      
      
      <div id="jb-sidebar">
       <%@ include file = "../include/sidebar.jsp" %>
      </div>
      
      
      <div id="jb-footer">
        
 <%@ include file = "../include/footer.jsp" %>
      </div>
    </div>
  </body>
</html>