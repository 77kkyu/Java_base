<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    <%@ include file = "../include/dbcon2.jsp" %>
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
    
  
    
  </head>
  
  
 <script>
 	function fn_memberSubmit(){
 		/* 데이터 유효성  체크 */
 		var f = document.frm;
 		
 		if( f.userid.value=="" ){
  			alert("아이디를 입력해주세요.");
  			f.userid.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		if( f.pass.value=="" ){
  			alert("패스워드를 입력해주세요.");
  			f.pass.focus();
  			return false;  // 자바스크립트 중단!
  		} 		
 		f.submit();
 		
 	}
 	
 </script>
  
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
                  
        <h2 style="text-align:left">로그인</h2>                 
            
<form name="frm" method="post" action="loginSub.jsp">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<table class="mtable" style="BORDER-COLLAPSE:collapse" align="center">
    
	<tr>
	<th class="mtd">아이디</th>
	<td class="mtd" style="text-align:left">
	<input class="textBox1" type="text" name="userid" maxlength="20">
	
	</td>
	</tr>
	
	<tr>
	<th class="mtd">패스워스</th>
	<td class="mtd" style="text-align:left"><input class="textBox1" type="password" name="pass" ></td>
	</tr>
	

	
	<tr>
	<td align="center" colspan="2" style="line-height:2.0;">
	<input class="button1" type="submit" value="전송"  onClick="fn_memberSubmit(); return false;"> 
	
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