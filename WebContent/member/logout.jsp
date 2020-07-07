<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 로그아웃 처리 세션 삭제 -->
<%
session.removeAttribute("SessionUserId");
%>

<script>
alert("로그아웃 되었습니다.");
location="../emp2_orcl/empList.jsp";
</script>