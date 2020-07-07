<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/dbcon2.jsp" %>

<%
String unq = request.getParameter("unq");
String top = request.getParameter("top");
String chk = request.getParameter("chk");  // poll.jsp 에서 체크한 데이터 받아옴 숫자로 넘어옴 ex) 1, 2, 3, 4

%>

<%
String query = " SELECT count(*) cnt FROM poll "
	         + " WHERE pid='"+unq+"' ";        
//자식테이블에 pid에 unq 적용
ResultSet rs = stmt.executeQuery(query);
rs.next();
int cnt = rs.getInt("cnt"); // 데이터가 있으면 1 없으면 0 

String sql = "";
if(cnt == 0) { // poll자식 테이블에 데이터가 없기 때문에 인서트 처리 
	
	       sql = " INSERT INTO poll(pid,a"+chk+") "        //컬럼앞부분 이름이 a이기 때문 [[ a+chk ]] 넘어오는데이터 chk 
	           + " VALUES('"+unq+"','1') "; 

}else{ // poll자식 테이블에 데이터가 있어서 업데이트 처리  update -> unq:1,chk:3
	                         //set a3 = a3+1 
	sql = " UPDATE poll SET a"+chk+"=a"+chk+"+1 "       //받아온 체크 컬럼에 +1해서 업데이트해줌 
	    + " WHERE pid='"+unq+"' ";
	
}

stmt.executeUpdate(sql);
%>
<script>
alert("투표하였습니다.");
location="poll.jsp?top=poll&unq=<%=unq%>";
</script>