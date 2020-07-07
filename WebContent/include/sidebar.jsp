<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String top = request.getParameter("top");   // topMenu.jsp에서 파라미터값 받아오기
String sessionId2 = (String) session.getAttribute("SessionUserId");
String adminConfirm2 = (String) session.getAttribute("AdminConfirm");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
ul {
	margin-left:-30px;
}

li {
	background-color:#5483b1;
	width:150px;
	list-style:none;
	line-height:3.0;
	margin-bottom:5px;
	text-align:center;
}
</style>
<body>
<%
if( "emp".equals(top) ) {  // topMenu.jsp에서 맞는 파라미터값 받아오기
%>
 <h2>사원관리</h2>
        <ul>
          <li><a href="../emp/empList.jsp?top=emp">사원관리1</a></li>
          <li><a href="../emp2_orcl/empList.jsp?top=emp">사원관리2</a></li>
        </ul>
<%
}else if("board".equals(top)) {
%>
	<h2>게시판</h2>
        <ul>
          <li><a href="../board/boardList.jsp?top=board">공지사항</a></li>
          <li><a href="../board/rBoardList.jsp?top=board">답변게시판</a></li>
        </ul>
<% 	
}else if("member".equals(top)){
%>	
	<h2>회원관리</h2>
        <ul>
        <%
        if( sessionId2 != null ){                 //로그인했을경우 일정관리가 떠야하기 때문
        %>
          <li><a href="../member/calendar.jsp?top=member">일정관리</a></li>
          <%
          if( adminConfirm2 != null ){
          %>
         	 <li><a href="../member/memberList.jsp?top=member">회원목록</a></li> <!-- 관리자만 보이게  -->
          <%
          }
          %>
        <%
        }
        %>
        </ul>
<% 	
}else if("poll".equals(top)){
%>
	<h2>설문참여</h2>
        <ul>
          <li><a href="../research/list.jsp?top=poll">설문목록</a></li>
          <%
          if( sessionId2 != null && adminConfirm2 != null){  // 관리자만 볼수있게
          %>
          <li><a href="../research/write.jsp?top=poll">설문만들기</a></li> <!-- 관리자만 보이게  -->
          <%
          }
          %>
        </ul>
<% 	
}
%>
</body>
</html>