<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>답변형 게시판 글쓰기</title>
    
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
  

  
  </script>
  
  <body onload="document.frm.title.focus();"> <!-- 화면 열렸을때 커서 제목으로  -->
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
      
        <%@ include file = "../include/topMenu.jsp" %>
       
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
      <div id="jb-content">
     
     <form name="frm" method="post" action="rBoardWriteSave.jsp">
     	
     	<p style="height:30px; width:600px; text-align:left;">
     	 	답변게시판 글쓰기
     	</p>
     	
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	<tr>
     		<th class="td1">제목</th>           <!-- css로 넓이 조절 -->
     		<td class="td1"><input type="text" name="title" style="width:200px"></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">암호</th>
     		<td class="td1"><input type="password" name="pwd" style="width:200px"></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">이름</th>
     		<td class="td1"><input type="text" name="name" style="width:200px"></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1"><textarea name="content" style="width:99%;height:70px;"></textarea></td>
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="submit" value="저장" onClick="fn_boardSubmit(); return false;"> <!-- return false = html-submit의 전송기능 없앰 -->
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