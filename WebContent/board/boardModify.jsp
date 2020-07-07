<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<%@ include file="../include/dbcon.jsp" %> <!-- db연결! -->
    
<%
// " aaaaa ".trim();  됨  // null.trim(); 안됨
String unq = request.getParameter("unq"); //넘어오고있는 변수의 이름은 unq 새로가져와야하기때문에 겟파라미터 


// unq 유효성 체크 
if( unq==null ){
%>
	<script>
	alert("잘못된 접근입니다11");
	history.go(-1); // history.back();
	
	</script>
<% 
	return; // jsp end
}else {
	unq = unq.trim();
	if("".equals(unq)){
%>
	<script>
	alert("잘못된 접근입니다22");
	history.go(-1); // history.back();
	
	</script>
<% 
	return; // jsp end
	}
}

String sql = " select title,name,content,rdate from board ";
	   sql+= " where unq = '"+unq+"' "; //변수 unq 변수 넣기 
	   
ResultSet rs = stmt.executeQuery(sql);	   
	   
rs.next();

String title = rs.getString("title"); //이미 저장되어있는 값을 스트링값으로 가져옴 
String name = rs.getString("name");
String content = rs.getString("content");
String rdate = rs.getString("rdate");

%>
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>게시판작성</title>
    
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
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
       
        <%@ include file = "../include/topMenu.jsp" %>
        
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                 
            <!-- 게시판 --> 
                 
      <div id="jb-content">
     
     <form name="frm" method="post" action="boardModifySave.jsp"> <!-- 모든데이터를 boardModifySave로 이동시킴 -->
     	<input type="hidden" name="unq" value="<%=unq %>">  <!-- hidden unq값을 숨겨서 같이 보낸다.. -->
     
     <table class="table1">
     	<colgroup>
     		<col width="100">
     		<col width="500">
     	</colgroup>
     	<tr>
     		<th class="td1">제목</th>           <!-- css로 넓이 조절 -->
     		<td class="td1"><input type="text" name="title" value="<%=title %>" style="width:200px"></td> <!-- 객체삽입 -->
     	</tr>
     	
     	<tr>
     		<th class="td1">암호</th>
     		<td class="td1"><input type="password" name="pwd" style="width:200px"></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">이름</th>
     		<td class="td1"><input type="text" name="name" value="<%=name %>" style="width:200px"></td>
     	</tr>
     	
     	<tr>
     		<th class="td1">내용</th>
     		<td class="td1"><textarea name="content" style="width:99%;height:70px;"><%=content %></textarea></td> <!-- 텍스트에어리어 사이에 객체삽입 -->
     	</tr>
     	
     	<tr>
     		<th colspan="2">
     		<input type="submit" value="저장" onClick="fn_boardSubmit(); return false;">
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