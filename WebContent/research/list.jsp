<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>  

<%
String sessionId3 = (String) session.getAttribute("SessionUserId");
String adminConfirm3 = (String) session.getAttribute("AdminConfirm");

int unit = 5;
String viewPage = request.getParameter("viewPage");
if( viewPage == null ){
	viewPage = "1";
}

String totalSql = " select count(*) total from research ";
ResultSet rs2 = stmt.executeQuery(totalSql);
rs2.next();
int total = rs2.getInt("total");
int totalPage = (int)Math.ceil((double)total/unit);
// 1(viewPage)->1 2->11 3->21
int startNo = ( Integer.parseInt(viewPage) - 1 ) * unit +1;
int endNo = startNo + unit-1;
 
String sql = " select b.* from ( ";                                         
	   sql+= " 	  select rownum rn, a.* from( ";
       sql+= "	     select unq, title, TO_CHAR(sdate,'YYYY-MM-DD') sdate, ";
       sql+= " 		    TO_CHAR(edate,'YYYY-MM-DD') edate, ";
       sql+= "              decode(gubun,'1','비공개','2','공개') gubun from research "; 
       sql+= " where gubun='2' ";
       sql+= " and sdate <= sysdate ";
       sql+= " and edate >= sysdate ";
	   sql+= " order by unq desc ) a ) b ";
	   sql+= " where rn >= "+startNo+"  and rn <= "+endNo+" ";
	   
	   ResultSet rs = stmt.executeQuery(sql);

%>

    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>설문목록</title>
     <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
  </head>
  <script>
  function fn_modify(unq) {
	  var url = "modify.jsp?unq="+unq;
	  location = url;
  }
  
function fn_delete(unq) {
	  var url = "delete.jsp?unq="+unq;
	  
	  if( confirm("정말 삭제하시겠습니까?")) {
		  location = url;
	  }
  }
  </script>
  <body>
  
            <!-- 메인 액티비티 연결 시작부분 -->
    
    <div id="jb-container">  <!-- container 전체를 감쌈-->
    
      <div id="jb-header">
       
       
 <%@ include file="../include/topMenu.jsp" %>
 
      </div>
  
       		<!-- 메인 액티비티 연결 부분 끝  -->
      
      <div id="jb-content" style="text-align:center;">
        <h2>설문목록</h2>         
    
        <table border="1" width="500" align="center">
        	<tr>
        		<th>번호</th>
        		<th>설문제목</th>
        		<th>설문기간</th>
        		<th>상태</th>
          <%
          if( sessionId3 != null && adminConfirm3 != null ){
          %>
        		<th>수정</th>
        		<th>삭제</th>
         	<%
          }
        	%>
        	</tr>
        
        	
        	<%
        	while(rs.next()){
        		String unq = rs.getString("unq");
        		String title = rs.getString("title");
        		String sdate = rs.getString("sdate");
        		String edate = rs.getString("edate");
        		String gubun = rs.getString("gubun");
        		
        		int rn = rs.getInt("rn"); // 행번호 
        			
        	%>
        	<tr align="center">
        		<td><%=rn %></td>
        		<td><a href="poll.jsp?top=poll&unq=<%=unq%>"><%=title %></a></td>
        		<td><%=sdate %>~<%=edate %></td>
        		<td><%=gubun %></td>
        	<%
        	
        		if( sessionId3 != null && adminConfirm3 != null ){
        		%>
        		<td><button type="button" onClick="fn_modify('<%=unq%>')">수정</button></td>
        		<td><button type="button" onClick="fn_delete('<%=unq%>')">삭제</button></td>
        		<%
        		}
        	}
        		%>
        		</tr>
        </table>
        
        <p>
        	<%
        	for(int i=1; i<=totalPage; i++){
        	%>
        	    <a href="list.jsp?viewPage=<%=i %>"><%=i %></a>  <!-- 뷰페이지를 통함..  -->
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