<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>   <!-- 한글깨짐방지 ㅠ -->
    
    <%@ include file="../include/dbcon.jsp" %> <!-- db연결! -->
    
    <%
    
    int unit = 10;
    
    String pageNo = request.getParameter("pageNo"); 
    if( pageNo==null ){ //처음 들어오는사람들은 1번 페이지로 이동
    	pageNo = "1";         
    }
    
    String sqlTotal = "select count(*) cnt from board";
    
    ResultSet rsTotal = stmt.executeQuery(sqlTotal);
    rsTotal.next();
    
    int total = rsTotal.getInt("cnt");        
    
    // 12/10 -> 1.2 -> ceil(1.2) -> 2
    int totalPage = (int)Math.ceil((double)total/unit); 
    
    //pageNo -> 1:0 , 2:10 , 3:20   ==> (pageNo-1) *10 
    int startNo = (Integer.parseInt(pageNo)-1)*unit;
    
    // 1page -> 0 / 2page ->10 / 3page->20
    int count = total - startNo;       //총순서 가져오기 
    
    String sql = " select "; 
           sql+= "         unq, ";
    	   sql+= "         title, ";
    	   sql+= "         name, ";
    	  // sql+= "         left(rdate,10) rdate, ";   //날짜만 출력하기 시간x   sql에서 해결하는게 더 빠름 
    	   sql+= " substring(rdate,1,10) rdate, "; //substring으로 날짜만 출력 
    	   sql+= "         hit ";
    	   sql+= " from ";
		   sql+= "         board "; 
		   sql+= " order by unq desc LIMIT "+startNo+","+unit; // 0번 index부터 10개 출력! 
		   
		   ResultSet rs = stmt.executeQuery(sql);
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
      	text-align:center;
      }
      
    </style>
 
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
        <%@ include file = "../include/topMenu.jsp" %>
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
                                 
      <div id="jb-content">
      
      <div style="margin-bottom:5px; width:650px; text-align:right;" >    
      <input type="button" value="글쓰기" onClick="location='boardWrite.jsp'">  <!-- onClick= 자바스크립 클릭시 이동 location='목적지' -->
      </div>
      
      	<table class="table1">
      		<tr>
      			<th width="15%" class="td1">번호</th>
      			<th width="40%" class="td1">제목</th>
      			<th width="15%" class="td1">이름</th>
      			<th width="15%" class="td1">날짜</th>
      			<th width="15%" class="td1">조회수</th>
      		</tr>
      		
      		<%
      		while(rs.next()){
      			String unq = rs.getString("unq");
      			String title = rs.getString("title");
      			String name = rs.getString("name");
      			String rdate = rs.getString("rdate");
      			String hit = rs.getString("hit");
      			
      			//String rdate1 = rdate.substring(0,10); // jsp에서 날짜만 나오게 해결하기 
      		%>
      			<tr>
      				<td class="td1"><%=count %></td>
      				<td class="td1"><a href="boardDetail.jsp?unq=<%=unq%>"><%=title %></a></td>  <!-- 타이틀에 unq값으로 상세보기로 넘어가기 -->
      				<td class="td1"><%=name %></td>
      				<td class="td1"><%=rdate %></td>
      				<td class="td1"><%=hit %></td>
      			</tr>
      		
      		<%
      		 count--;  //next() 할때마다 가감해서 번호를 순서대로 처리함
      		}
      		%>
      	</table>
      
      <p style="width:100%; text-align:center;">
      <%
      	for(int i=1; i<=totalPage; i++){
      %>
      	<a href="boardList.jsp?pageNo=<%=i %>"><%=i %></a>
      <% 	
      	}
      %>
      
      </p>
      
      
      </div>
         
      <div id="jb-sidebar">
         <%@ include file = "../include/sidebar.jsp" %>
      </div>
      
      <div id="jb-footer">
        <%@ include file = "../include/footer.jsp" %> 
      </div>
      
    </div> <!-- container -->
  </body>
</html>