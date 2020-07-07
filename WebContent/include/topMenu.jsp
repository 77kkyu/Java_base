<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String sessionId = (String) session.getAttribute("SessionUserId");
String adminConfirm = (String) session.getAttribute("AdminConfirm");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

      <p>
        <a href="../main/main.jsp">홈</a>
        <a href="../board/boardList.jsp?top=board">게시판</a>   <!-- top -->
        <a href="../emp/empList.jsp?top=emp">사원관리</a>
        
        <%
        if(sessionId == null){
        %>
        
        <a href="../member/login.jsp?top=member">로그인</a>
        <a href="../member/memberWrite.jsp?top=member">회원가입</a>
       <%
        }else{
       %>
 		 <a href="../member/logout.jsp">로그아웃</a>
        <a href="../member/memberModify.jsp?top=member">회원정보수정</a>
 	   <% 
 		}
       %>
        <a href="../research/list.jsp?top=poll">설문참여하기</a>
       </p>
       
</body>
</html>