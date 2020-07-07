<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>대화방</title>
    <style>
      #jb-container {
        width: 940px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
        
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
        text-align:center;
        vertical-align:bottom;
         
      }
      #jb-content {
        width: 700px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
        width: 150px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
    </style>
  </head>
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
        <p style="">
        <a href="../main/main.jsp">홈</a>
        <a href="../board/boardList.jsp">게시판</a>
        <a href="">대화방</a>
        <a href="../,member/login.jsp">로그인</a>
        <a href="../member/memberWrite.jsp">회원가입</a>
        <a href="#">일정관리</a>
       </p>
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
      
      <div id="jb-content">
       
        <table border="0" width="600">
        
        	<tr>
        		<td height="200"> 
        <iframe src="read.jsp" width="90%" height="90%"></iframe>
        		</td>
        	</tr>
        	
        	<tr>
        		<td height="50">
        <iframe src="write.jsp" width="90%" height="90%"></iframe>
        		</td>
        	</tr>
        	
        </table>
       
      </div>
      
      <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
      
    </div> <!-- container -->
  </body>
</html>