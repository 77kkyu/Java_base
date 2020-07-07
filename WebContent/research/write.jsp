<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    <%@ include file = "../include/dbcon2.jsp" %>
    
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
            
<form name="frm" method="post" action="writeSave.jsp">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<table class="mtable" style="BORDER-COLLAPSE:collapse" align="center">
    
	<tr>
	<th class="mtd">설문제목</th>
	<td class="mtd"><textarea name="title"></textarea> </td>
	</tr>
	
	<tr>
	<th class="mtd">문항1</th>
	<td class="mtd"><input type="text" name="q1"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항2</th>
	<td class="mtd"><input type="text" name="q2"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항3</th>
	<td class="mtd"><input type="text" name="q3"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항4</th>
	<td class="mtd"><input type="text" name="q4"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항5</th>
	<td class="mtd"><input type="text" name="q5"></td>
	</tr>

	<tr>
	<th class="mtd">문항6</th>
	<td class="mtd"><input type="text" name="q6"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항7</th>
	<td class="mtd"><input type="text" name="q7"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항8</th>
	<td class="mtd"><input type="text" name="q8"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항9</th>
	<td class="mtd"><input type="text" name="q9"></td>
	</tr>
	
	<tr>
	<th class="mtd">문항10</th>
	<td class="mtd"><input type="text" name="q10"></td>
	</tr>
	<tr>
	
	<tr>
	<th class="mtd">설문기간</th>
	<td class="mtd"><input type="text" name="sdate" id="sdate" style="width:100px;"> ~
		            <input type="text" name="edate" id="edate" style="width:100px;"> 
    </td>
	</tr>
	
	<tr>
	<th class="mtd">상태</th>
	<td class="mtd"><select name="gubun">
						<option value="1">비공개</option>
						<option value="2">공개</option>
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