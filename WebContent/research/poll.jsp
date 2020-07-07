<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/dbcon2.jsp" %>

<%

String unq = request.getParameter("unq");
String top1 = request.getParameter("top");

String sql = " SELECT unq,title,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10 "
           + " FROM research "
 		   + " WHERE unq='"+unq+"' "; 
//최근에 등록된거 하나만 가져오기
ResultSet rs = stmt.executeQuery(sql);
rs.next();

String title = rs.getString("title");

%>    
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>설문투표 화면</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
    
  </head>
  
  
 <script>
 	function fn_pool(){
 			
 		var chk = document.getElementsByName("chk");   // getElementsByName으로 하면 배열로 탄생 
 		// chk[0] == 체크했을때 true;나머지 false  chk[1] chk[2] chk[3]
 		var value ="";
 		for(var i=0; i<chk.length; i++){
 			if(chk[i].checked == true) value = i+1 ;  //0번부터라 마지막에 +1을 해줌
 		}
 		//alert(value);  //데이터가 들어가나 확인 
 	    location= "pollSave.jsp?unq=<%=unq%>&chk="+value;
 	  
 	}
 	
 	function fn_result(){
 		var url = "pollResult.jsp?unq=<%=unq%>";
 		window.open(url,"result","width=420,height=300"); 
 	}
 </script>
 
 <style>
 .title{
 	width:50%;
 	height:50px;
 	background:skyblue;
 	border:1px solid #cccccc;
 	text-align:center;
 	font-size:17px;
 	font-weight:bold;
 	font-family:맑은 고딕;
 	line-height:2.0;
 	margin-left:170px;
 }
 
  .content{
 	width:50%;
 	border:0px solid #cccccc;
 	text-align:left;
 	font-size:14px;
 	font-weight:bold;
 	font-family:맑은 고딕;
 	line-height:1.6;
 	margin-top:10px;
 	margin-left:170px;
 }
 
   .buttonArea{
 	width:50%;
 	border:0px solid #cccccc;
 	text-align:center;
 	font-size:14px;
 	font-weight:bold;
 	font-family:맑은 고딕;
 	line-height:1.6;
 	margin-top:10px;
 	margin-left:170px;
 }
 
 </style>
  
  <body>
               
                <!-- 액티비티 연결 부분 시작 -->
                
    <div id="jb-container">
      <div id="jb-header">
     
     	<%@ include file="../include/topMenu.jsp"  %>
     
      </div>
           
           <!--  액티비티 연결 부분 끝 -->
      			
      				
     			<!-- 회원가입 작성 시작부분 && content -->
     			
      <div id="jb-content">
                                 
        <h2 style="text-align:left">투표하기</h2>                 
            
<form name="frm" method="post" action="pollSave.jsp">  

<input type="hidden" name="unq" value="<%=unq%>">
<input type="hidden" name="top" value="<%=top1%>">
   
    <div class="title">
    	<%=title %>
    </div>
	
	<div class="content">
		<%
		//String q1 = rs.getString(q1);  문항에 대한 출력을 for문으로 
		for(int i=1; i<=10; i++){
			String str = rs.getString("q"+i);
		    if(str != null){
		    	str = str.trim();
		%>
			<input type="radio" name="chk" value="<%=i%>" >
			<%=str %> <br>
		<%    	
		    }
		}
		%>
	</div>
	
	<p class="buttonArea">
	<button type="button" onClick="fn_pool()">투표</button>
	<button type="button" onClick="fn_result()">결과</button>
	
	</p>

	

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