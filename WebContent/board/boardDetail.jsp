<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %> <!-- db연결! -->

<%

String unq = request.getParameter("unq"); //넘어오고있는 변수의 이름은 unq 새로가져와야하기때문에 겟파라미터 

stmt.executeUpdate("update board set hit=hit+1 where unq='"+unq+"' ");



String sql = " select title,name,content,date_format(rdate,'%Y년%m월%d일%k시%i분%s초') as rdate from board ";
	   sql+= " where unq = '"+unq+"' "; //변수 unq 변수 넣기 
	   
ResultSet rs = stmt.executeQuery(sql);	   
	   
rs.next();

String title = rs.getString("title"); //이미 저장되어있는 값을 스트링값으로 가져옴 
String name = rs.getString("name");
String content = rs.getString("content");
String rdate = rs.getString("rdate");

content = content.replaceAll("\n", "<br>"); // 내부적으로 엔터누를때 대행을함 \n을 <br>로 바꿔줘야 줄바꿈을 한다.

%>
    
<%@ include file = "../include/header.jsp" %>
    
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
 
  
  <script>
  
  function fn_delete(){
	 
	  location="passWrite.jsp?unq=<%=unq%>";
  }
  
  </script>
  
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
      <%@ include file ="../include/topMenu.jsp" %>
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
      <div id="jb-content">
        
     <table class="table1">
     
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	
     	<tr>
     		<th class="td1">제목</th>           
     		<td class="td1"><%=title %></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">이름</th>
     		<td class="td1"><%=name %></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1" style="height:200px; vertical-align:top;"><%=content %></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">등록일</th>
     		<td class="td1"><%=rdate %></td>
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="button" value="수정" onClick="location='boardModify.jsp?unq=<%=unq%>'"> <!-- unq값을 가지고 이동  -->
     		<input type="button" value="삭제" onClick="fn_delete()">
     		</th>
     	</tr>
     	
     </table>
                     
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