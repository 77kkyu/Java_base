<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
       
<%@ include file = "../include/header.jsp" %>
  
   <script>
  $( function() {
    $( "#birthday" ).datepicker ({  //# 아이디 값을 말하는것 
    changeMonth: true,
    changeYear: true
    });
  } );
  </script>
  
 <script>
 	function fn_memberSubmit(){
 		/* 데이터 유효성  체크 */
 		var f = document.frm;
 		
 		if( f.userid.value=="" ){
  			alert("아이디를 입력해주세요.");
  			f.userid.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		
 		if( f.name.value=="" ){
  			alert("이름을 입력해주세요.");
  			f.name.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		if( f.birthday.value=="" ){
  			alert("생년월일을 입력해주세요.");
  			f.birthday.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		if( f.gender.value=="" ){
  			alert("성별을 입력해주세요.");
  			f.gender.focus();
  			return false;  // 자바스크립트 중단!
  		}
 		
 		
 		
 		f.submit();
 		
 	}
 	
    function fn_popup(){ // 아이디 중복체크 팝업
    	
    	var id = document.frm.userid.value; //현재 입력된 아이디 값을 가져옴 
    	
    	if(id == ""){
    		alert("아이디를 입력해주세요");
    		document.frm.userid.focus();
    		return false;
    	}
    	
 		var url="idcheck.jsp?userid="+id;   // 입력된 아이다 값을 넘겨줌 
 		window.open(url,'popup','width=400,height=200'); // 팝업창 뛰우기  (url,별칭,옵션)
 	}
    
    function fn_post(){
    	var url = "../member/post1.jsp";
    	window.open(url,'post','width=400,height=150');
    	
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
                  
        <h2 style="text-align:left">회원가입</h2>                 
            
<form name="frm" method="post" action="">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<table class="mtable" style="BORDER-COLLAPSE:collapse" align="center">
    
	<tr>
	<th class="mtd">아이디</th>
	<td class="mtd" style="text-align:left">
	<input class="textBox1" type="text" name="userid" maxlength="20">
	<input class="button1" type="button" value="중복체크" onClick="fn_popup();">
	</td>
	</tr>
	
	<tr>
	<th class="mtd">패스워스</th>
	<td class="mtd" style="text-align:left"><input class="textBox1" type="password" name="pass" ></td>
	</tr>
	
	<tr>
	<th class="mtd">이름</th>
	<td class="mtd" style="text-align:left"><input class="textBox1" type="text" name="name" ></td>
	</tr>
	
	<tr>
	<th class="mtd">성별</th>
	<td style="text-align:left"><input type="radio" name="gender" value="M" checked>남, 
     <input type="radio" name="gender" value="F">여
     </td>                                  <!-- checked 미리체크 -->
	</tr>
	
	<tr>
	<th class="mtd">생일</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="birthday" id="birthday">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">연락처</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="phone">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">주소</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="post">
	 	<input class="button1" type="button" value="우편번호" onClick="fn_post()">
	 	<br>
	 	<input class="textBox1" type="text" name="addr" style="width:90%;">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">이메일</th>
	 <td class="mtd">
	 	<input class="textBox1" type="email" name="email">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">학력</th>
	 <td class="mtd">
	 	<select name="edu">
	 		<option value="1">대학원졸</option>
	 		<option value="2">대졸</option>
	 		<option value="3">고졸</option>
	 		<option value="4">중졸</option>
	 		<option value="5">초졸</option>
	 	</select>
     </td>
	</tr>
	
	<tr>
	<td align="center" colspan="2" style="line-height:2.0;">
	<input class="button1" type="submit" value="전송"  onClick="fn_memberSubmit(); return false;"> 
	<input class="button1" type="reset" value="재작성"> <!-- 리셋 시킴 -->
	</td>
	</tr>
</table>
	</form>
      </div>
      
                      <!-- 회원가입 연결부분 끝 && content-->
      
      
      <div id="jb-sidebar">
      
      <!-- 사이드바 -->
        <%@ include file = "../include/sidebar.jsp" %>  <!-- include에 있는걸 적용 -->
      </div>
      
      
      <div id="jb-footer">
      
       <%@ include file = "../include/footer.jsp" %>  
        
      </div>
    </div>
  </body>
</html>