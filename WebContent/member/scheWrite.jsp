<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
<%
String userid = (String) session.getAttribute("SessionUserId");
if(userid == null){
%>	
 <script>
 alert("로그인 후 이용해주세요.");
 self.close();  //팝업종료
 opener.location = "../member/login.jsp";
 </script>
<%
	return;  // jsp 종료 
}
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
  
  function fn_scheSubmit() {
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
	  if(f.pass.value ==""){
		  alert("암호를 입력해주세요.");
		  f.pass.focus();
		  return false;
	  }
	  f.submit();
	  
  }

  
  </script>
  
 
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
    
     
     <form name="frm" method="post" action="scheWriteSave.jsp">
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	<tr>
     		<th class="td1">등록일</th>           <!-- css로 넓이 조절 -->
     		<td class="td1"><input type="text" name="schedate" id="schedate" ></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">제목</th>
     		<td class="td1"><input type="text" name="title" ></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">암호</th>
     		<td class="td1"><input type="password" name="pass" ></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1"><textarea name="content" style="width:99%;height:70px;"></textarea></td>
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="submit" value="저장" onClick="fn_scheSubmit(); return false;"> <!-- return false = html-submit의 전송기능 없앰 -->
     		<input type="reset" value="재작성">
     		</th>
     	</tr>
     	
     </table>
     </form>                 
      
      
                    
      
     
  </body>
</html>