<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
<%@ include file="../include/dbcon.jsp" %>
<%


/*  unq 유효성체크  */
String unq = request.getParameter("unq");

String gubun = request.getParameter("gubun"); // R,N 이 넘어옴 

if( gubun == null ){
  	gubun = "N"; //일반게시판 	
	
}

 
if( unq == null ){
	%>
	<script>
	alert("잘못된 경로");
	history.go(-1);
	</script>
	<% 
	return;
}
%>

<%
	  String action = "";
	  if( "R".equals(gubun) ) action = "rBoardDelete.jsp";
	  else if( "N".equals(gubun) ) action = "boardDelete.jsp";  // r보드 인지 n보드인지 구분후 삭제하기 
%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>암호확인화면</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css">  <!-- css파일 불러오기 -->
     
    <script src="../js/myScript.js"></script> <!-- 유효성체크 가져오기  -->
    
    <style>
            
      .table1 {
      	width:600px;
      	border:1px solid #555555;
      	border-collapse:collapse;
      }
      
      .td1{
      	border:1px solid #555555;
      	padding:5px;
      }
      
    </style>
  </head>
  
  <script>
  function fn_pass(){
	  var f = document.frm;
	  if( f.pwd.value == "" ){
		  alert("암호를 입력해주세요");
		  f.pwd.focus();
		  return false;
	  }
	  
	   f.action = "<%=action %>";  
	   f.submit();
  }
             //위에 jsp action 변수 받기
  
  </script>
  
  <body onload="document.frm.pwd.focus();"> <!-- 화면 열렸을때 커서 제목으로  -->
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
      
        <%@ include file = "../include/topMenu.jsp" %>
       
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
      <div id="jb-content">
     
     <form name="frm" method="post">    <!-- 액션 -->
     
     <input type="hidden" name="unq" value="<%=unq %>"> <!-- 히든으로 unq값을 보냄  -->
     
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	
     	
     	<tr>
     		<th class="td1">암호</th>
     		<td class="td1"><input type="password" name="pwd" style="width:200px"></td>
     	</tr>
     	
     	
     	<tr>
     		<th colspan="2">
     		<input type="submit" value="확인" onClick="fn_pass(); return false;"> <!-- return false = html-submit의 전송기능 없앰 -->
     		<input type="reset" value="취소">
     		</th>
     	</tr>
     	
     </table>
     </form>                 
      </div>
      
                      <!-- 게시판 --> 
      
      <div id="jb-sidebar">
         <%@ include file = "../include/sidebar.jsp" %>
      </div>
      
      <div id="jb-footer">
         <%@ include file = "../include/footer.jsp" %> 
      </div>
      
    </div> <!-- container -->
  </body>
</html>