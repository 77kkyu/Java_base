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
	
String sql = " SELECT title,content FROM schedule "
           + " WHERE userid='"+userid+"' " 
           + "   AND schedate = to_date('"+newDate+"') "; 
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String title = rs.getString("title");
String content = rs.getString("content");
// content 내용부분 엔터=\n 보지이 않지만 있음 이걸 br로 바꿔줌 
content = content.replaceAll("\n","<br>"); //치환 replace = 하나만 바꿈.. replaceAll은 전체 바꿈 
%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>일정관리 글쓰기</title>
    
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
  $( function() {
    $( "#schedate" ).datepicker ({  //# 아이디 값을 말하는것 
    changeMonth: true,
    changeYear: true
    });
  } );
  </script>
  
  
  <script>
  
  function fn_delete() {
	  if( confirm("삭제 하시겠습니까?") ) {
	  var url = "scheDelete.jsp?date=<%=newDate%>";
	  location= url;
	  }else{
		  alert("삭제취소");
	  }
	  
  }
  
  function fn_modify() {
	  
	  var url = "scheModify.jsp?date=<%=newDate%>";
	  location = url;
  }

  
  </script>
  
 
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
     <form name="frm" method="post" action="scheModify.jsp">
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	<tr>
     		<th class="td1">등록일</th>           <!-- css로 넓이 조절 -->
     		<td class="td1"><%=newDate %></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">제목</th>
     		<td class="td1"><%=title %></td>
     	</tr>
         	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1" style="height:100px; vertical-align:top;"><%=content %></td>
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="button" value="수정" onClick="fn_modify()"> 
     		<input type="button" value="삭제" onClick="fn_delete()">
     		</th>
     	</tr>
     	
     </table>
     </form>                 
      
      
                    
      
     
  </body>
</html>