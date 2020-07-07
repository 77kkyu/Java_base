<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> 
  </head>
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
        <%@ include file="../include/topMenu.jsp"  %>
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
      
      <div id="jb-content">
        <h2>Content</h2>                 
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