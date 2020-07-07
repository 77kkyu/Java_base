<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>

<%
String date = request.getParameter("date");
String userid = (String) session.getAttribute("SessionUserId");
if(userid == null || date == null){
%>	
 <script>
 alert("로그인 후 이용해주세요.");
 self.close();  //팝업종료
 opener.location = "../member/login.jsp";
 </script>
<%
	return;  // jsp 종료 
}

// 2020-01-12 이렇게 데이터가 넘어왔나 검사를 해야함 
// 1. split: '-' 배열로 나눔 

String[] str = date.split("-");
	// str[0]=2020 str[1]=01 str[2]=12
String newDate = str[0];
	if( str.length != 3 ){
%>
	<script>
	history.back();
	self.close();
	</script>
<%
	return;
	}
	
	if( str[1].length() < 2 ){ //월
		newDate += "-0"+str[1];        //1자리일때는 0 붙여줌 
	}else{
		newDate += "-"+str[1];        //두자리일때는 0을 안붙임
	}
	
	if( str[2].length() < 2 ){ //일
		newDate += "-0"+str[2];        
	}else{
		newDate += "-"+str[2];        
	}
	
String sql = " SELECT title,content,pass FROM schedule "
           + " WHERE userid='"+userid+"' " 
           + "   AND schedate='"+newDate+"' "; 
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String title = rs.getString("title");
String content = rs.getString("content");
String pass1 = rs.getString("pass");
%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>수정하기</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css">  <!-- css파일 불러오기 -->
    <link rel="stylesheet" href="../css/jquery-ui.css">  <!-- 달력소스 -->
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
     
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
  
  function fn_modifySubmit(){
	  var f = document.frm;
	  if(f.schedate.value == ""){
		  alert("등록일을 입력해주세요.");
			f.schedate.focus();
			return false;  // 자바스크립트 중단!
	  }
	  
	  if(f.title.value == ""){
		  alert("제목을 입력해주세요.");
			f.title.focus();
			return false;  // 자바스크립트 중단!
	  }
	
	  f.submit();
	  
  }
 


  
  </script>
  
 
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
    
     
     <form name="frm" method="post" action="scheModifySave.jsp">
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	<tr>
     		<th class="td1">등록일</th>           <!-- css로 넓이 조절 -->
     		<td class="td1"><input type="text" name="schedate" id="schedate" value="<%=newDate %>" readonly></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">제목</th>
     		<td class="td1"><input type="text" name="title" value="<%=title %>" ></td>
     	</tr>
         	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1"><textarea name="content" style="width:99%;height:70px;"><%=content %></textarea></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">패스워드</th>
     		<td class="td1"><input type="password" name="pass" ></td>
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="submit" value="완료" onClick="fn_modifySubmit(); return false;"> 
     		<input type="reset" value="재작성" >
     		</th>
     	</tr>
     	
     </table>
     </form>                 
      
      
                    
      
     
  </body>
</html>