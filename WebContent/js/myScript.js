 
function fn_boardSubmit(){
	  var f = document.frm;
	  if(f.title.value == ""){
		  alert("제목을 입력해주세요");
		  f.title.focus();
		  return false;
	  }
	  if(f.pwd.value == ""){
		  alert("비밀번호를 입력해주세요");
		  f.pwd.focus();
		  return false;
	  }
	 f.submit(); // 전송함수
  }
  