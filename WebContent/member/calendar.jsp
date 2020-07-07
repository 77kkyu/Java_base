<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file = "../include/dbcon2.jsp" %>

<%
String userid = (String)session.getAttribute("SessionUserId");
if(userid == null){
%>
	<script>
	location= "../member/login.jsp";
	</script>
<%
}
String sql = " select unq,TO_CHAR(schedate,'YYYY-MM-DD') schedate from schedule " 
		   + " where userid='"+userid+"' ";
                                             // unq값과 등록일 값을 가져옴 로그인한 아이디 조건으로 
ResultSet rs = stmt.executeQuery(sql);

//Map<String,String> map = new HashMap<String,String>();
ArrayList<String> list = new ArrayList<String>();

while(rs.next()){                            //어레이리스트 안에 등록일 데이터를 집어넣어줌 
	String date = rs.getString("schedate");
	list.add(date);  // 2020-03-10 이런식으로 들어가있음 
	
}
%>
    
<%

String yy = request.getParameter("year");  // 밑에 셀렉트에서 설정한 값의 이름을 가져옴 가져옴 
String mm = request.getParameter("month"); 


Calendar cal = Calendar.getInstance();
int y = cal.get(1); //year
int m = cal.get(2); //month

if(yy != null && !"".equals(yy) &&                
   mm != null && !"".equals(mm)){
	 y = Integer.parseInt(yy); //출력년도
	   m = Integer.parseInt(mm)-1; // 출력 개월(출력시 +1 필요)
}
cal.set(y,m,1); // 출력 월의 1일날로 세팅 (1일날의 요일을 얻기 위해)

int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK); // 1일날의 요일
int lastDay = cal.getActualMaximum(Calendar.DATE); // 마지막 날짜 
%>    
    
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>일정관리</title>
    
    <link rel="stylesheet" type="text/css" href="../css/layout.css"> <!-- css -->
    
  
    
  </head>

 <style>
  table.type01 {
	 width:680px;
	 border-collapse:collapse; /* cell 사이 간격 */
 	border:1px solid #ccc;
 border-top: 1px solid skyblue;
 margin:10px;
 }
 
 table.type01 th{
	 padding:3px;
 	font-size:15px;
 font-weight:bold;
 border:1px solid #ccc;
 background:#ececec;
 text-align:center;
 }
 
 table.type01 td{
 height:50px;
  padding:3px;
 	font-size:13px;
 border:1px solid #ccc;
 text-align:center;
 vertical-align:middle;
 }
 
 .div1 {
 width:340px;
 height:30px;
 text-align:left;
 float:left;
 padding-left:10px;
 }
 
 .div2 {
 width:340px;
 height:30px;
 text-align:right;
 float:right;
 padding-right:10px;
 }
 </style>
 
  <script>
 function fn_change() {
	 // var year = document.frm.year.value; 랑 같은거 폼이있을때
	 var year = document.getElementById("year").value;  //폼이 없을때 아이디값 가져오기 
	 var month = document.getElementById("month").value;
	 
	 //location = "calendar.jsp?year=2020 &month=3; 
	 location = "calendar.jsp?year="+year+"&month="+month;	 
 }
 
 function fn_sche() {
	 var url = "scheWrite.jsp";
	 window.open(url,'sche','width=630,height=300');
	 
 }
 
 function fn_detail(d){ // fn_detail(매개변수)
	 var y = "<%=y%>";      
	 var m = "<%=m+1%>";
	 /* 위에 날짜변수 가져와서 날짜 세팅 */
	 var date = y+"-"+m+"-"+d;
	 var url = "scheDetail.jsp?date="+date;    
 	 window.open(url,'detail','width=630,height=300');  //별칭이 같으면 팝업창이 같은 팝업창에서 뜸 
 }
 </script> 
  
  <body>        
                <!-- 액티비티 연결 부분 시작 -->
                
    <div id="jb-container">
      <div id="jb-header">
     
     	<%@ include file="../include/topMenu.jsp"  %>
     
      </div>          
           <!--  액티비티 연결 부분 끝 -->
      			   				
     			<!-- 회원가입 작성 시작부분 && content -->
     			
      <div id="jb-content">
               
                  <!-- 회원가입 작성 시작부분 -->
                  
        <h2 style="text-align:left">스케줄표</h2>   
                      
        <div class="div1">    
	 	<select name="year" id="year" onChange="fn_change()">  <!-- onChange 변경될때마다 변경할수있음 onClick이랑 비슷함 -->
	 	<%
	 	for(int i=(y-2); i<=(y+2); i++){
	 	%>
	 		<option value="<%=i %>" <%if(i==y) out.print("selected"); %> ><%=i %></option>
	 	<%
	 	}
	 	%>		
	 	</select>
     
	 	<select name="month" id="month" onChange="fn_change()">
	 	<%
	 	for(int i=1; i<=12; i++){
	 	%>
	 		<option value="<%=i %>" <%if(i==(m+1)) out.print("selected"); %>><%=i %></option>
	 	<%
	 	}
	 	%>
	 	</select>
    </div>
    
    <div class="div2">
    	<button type="button" onClick="fn_sche()">스케줄등록</button>
    </div>
	
	<table class="type01">
	<tr>
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
	</tr>
	<tr>
	<%
	int count = 0;
	for(int i=1; i<dayOfWeek; i++){   // dayOfWeek=요일을 값으로 리턴해줌 
	%>                                <!-- 만약 수요일이면 값은 4  i<4 까지 td를 만들어줌 -->
		<td></td>
	<%
	
	count++;
	}
	String y1 = y+"";                    //년은 그대로 출력  앞에 0이 없기 때문
	String m1 = "";
	String d1 = "";
	
	if( (m+1) < 10 ) m1 = "0"+(m+1);     // 달이 10보다 작으면 앞에 0을 붙여줌
	else m1 = (m+1)+"";   //+"" 스트링값으로 변환   //달이 10보다 크면 그대로 출력
	for(int d=1; d<=lastDay; d++){
		if( d<10 ) d1 = "0"+d;         //일이 10보다 작으면 앞에 0붙임
		else d1 = d+"";   // 문자처리  //일이 10보다 크면 그대로 출력
		
		String date1 = y1+"-"+m1+"-"+d1;   // 어레이에있는 문자랑 똑같이 만들어 문자 그대로 date1에 저장시킴
		int idx = list.indexOf(date1); // -1 =없다   indexOf= 데이터가 없을시 -1을 리턴함   // indexOf로 데이터가 있나 찾아봄 
	
		// 일정에 링크걸기 <td><a href="javascript:함수이름(fn_aaa('2'))">2</a></td> href는 링크만 걸수있는데 앞에 자바스크립키워드를 써서 함수사용
													                                // 함수안에 파라미터값으로 해당하는 날짜를 넣어줌 		
		
		if(idx > -1){               // 데이터가 있으면 일정을 출력
			out.print("<td><a href=\"javascript:fn_detail('"+d+"')\">"+d+"</a>"); // 링크연결 
			out.print("<br>일정");
		}else{
			out.print("<td>"+d);
		}
		out.print("</td>");        
		 
		if(dayOfWeek%7 == 0){
			out.print("</tr><tr>");
		}
		dayOfWeek++;
		count++;
		if(count == 7) count=0;
	}
	while(count < 7 && count>0){
		out.print("<td></td>");
		count++;
	}
	%>
	</tr>
</table>

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