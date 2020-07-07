<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    <%@ include file = "../include/dbcon2.jsp" %>
    
<%
String userid = (String) session.getAttribute("SessionUserId");  //세션 아이디 가져오기

if( userid == null ){
	%>
	<script>
	alert("잘못된 접근입니다.");
	history.back();
	</script>
	<% 
	return;
}

String sql = " SELECT name,TO_CHAR(birthday,'YYYY-MM-DD') birthday,gender,phone,addr,email,edu,post ";
	   sql+= " FROM member ";
	   sql+= " where userid = '"+userid+"' ";
	   
ResultSet rs = stmt.executeQuery(sql);
rs.next();

String name = rs.getString("name");
String birthday = rs.getString("birthday");
String gender = rs.getString("gender");
String phone = rs.getString("phone");
String addr = rs.getString("addr");
String email = rs.getString("email");
String edu = rs.getString("edu");
String post = rs.getString("post");

%>
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>회원정보수정</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
    
    <link rel="stylesheet" href="../css/jquery-ui.css">  <!-- 달력소스 -->
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
 
    
  </head>
  
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
            
<form name="frm" method="post" action="memberModifySave.jsp">  
<!-- 폼으로 감싸야 데이터전체를 이동시킴 -->
<table class="mtable" style="BORDER-COLLAPSE:collapse" align="center">
    
	<tr>
	<th class="mtd">아이디</th>
	<td class="mtd" style="text-align:left">
	<%=userid%>
	
	</td>
	</tr>
	
	<tr>
	<th class="mtd">패스워스</th>
	<td><input type="button" value="변경"></td>
	</tr>
	
	<tr>
	<th class="mtd">이름</th>
	<td class="mtd" style="text-align:left"><input class="textBox1" type="text" name="name" value="<%=name%>"></td>
	</tr>
	
	<tr>
	<th class="mtd">성별</th>
	<td style="text-align:left"><input type="radio" name="gender" value="M" 
									<%if("M".equals(gender)) out.print("checked"); %>>남, 
     <input type="radio" name="gender" value="F"
     								<%if("F".equals(gender)) out.print("checked"); %>>여
     </td>                                  <!-- checked 미리체크 -->
	</tr>
	
	<tr>
	<th class="mtd">생일</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="birthday" id="birthday" value="<%=birthday%>">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">연락처</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="phone" value="<%=phone%>">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">주소</th>
	 <td class="mtd">
	 	<input class="textBox1" type="text" name="post" value="<%=post%>" >
	 	<input class="button1" type="button" value="우편번호" >
	 	<br>
	 	<input class="textBox1" type="text" name="addr" style="width:90%;" value="<%=addr%>">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">이메일</th>
	 <td class="mtd">
	 	<input class="textBox1" type="email" name="email" value="<%=email%>">
     </td>
	</tr>
	
	<tr>
	<th class="mtd">학력</th>
	 <td class="mtd">
	 	<select name="edu">
	 		
	 		<option value="1" <%if("1".equals(edu)) out.print("selected"); %> >대학원졸</option>
	 		<option value="2" <%if("2".equals(edu)) out.print("selected"); %> >대졸</option>
	 		<option value="3" <%if("3".equals(edu)) out.print("selected"); %> >고졸</option>
	 		<option value="4" <%if("4".equals(edu)) out.print("selected"); %> >중졸</option>
	 		<option value="5" <%if("5".equals(edu)) out.print("selected"); %> >초졸</option>
	 	</select>
     </td>
	</tr>
	
	<tr>
	<td align="center" colspan="2" style="line-height:2.0;">
	<input class="button1" type="submit" value="변경"  onClick="fn_memberSubmit(); return false;"> 
	<input class="button1" type="reset" value="재작성"> <!-- 리셋 시킴 -->
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