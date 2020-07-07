<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS 테스트</title>
</head>

<style>
.java {      <!--span 앞에 . 찍으면 이름 클래스라는 속성으로 호출-->
	font-size:12px;
	color:#cccccc;
	font-famaily:맑은 고딕;
	font-style:italic;
	font-weight:bold;            <!--굵기-->
	line-height:0.5;        <!--위래가 줄간격 -->
	text-decoration : underline;
	text-align:center;
	text-transform:uppercase;
	letter-spacing:10px;
	vertical-align:top;
	white-space:nowrap;
}

#span2 {    <!-- id속성을 이용해 호출 -->
	font-size:14px;
	color:#cccccc;
	font-famaily:궁서;
	font-style:italic;
	font-weight:bold;            <!--굵기-->
	line-height:0.5;        <!--위래가 줄간격 -->
	text-decoration :line-through;
	
}

  /* none:아무효과없음 , underline:밑줄 , overline:윗줄 */
  
	/* line-throught:취소선 */
	
   /* text-align : 문자들의 정렬 left,right,center,justify */
   
   /* text-transform: uppercase:대문자 lowercase:소문자 
   capitalize:띄어쓰기할때 첫글자 대문자 */
   
   /* letter-spacing : px 글자들간의 간격 */
   
   /* vertical-align: sub아래첨자 super윗첨자 top,middle,bottom */
   
   /* white-space: normal= 기본속성,자연스런 줄바꿈
                   nowrap= 줄바꿈하지 않음<br>써도 안바뀜 */

</style>
<body>

<table border="1">
	<tr>
		<td class="java" width="200" height="300">aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		aaa  불매운동
		
		</td>
		<td id="span2">일본제품 <br>불매운동</td>
	</tr>
</table>

<br>

 	<span class="java" >        <!-- class="이름" 호출 -->
 		안녕하세요 하하하11<br>
 		안녕하세요 하하하12
 	</span>
 	<br>
 	<span class="sapn2">
 		안녕하세요 하하하22<br>
 		안녕하세요 하하하23
 	</span>

</body>
</html>