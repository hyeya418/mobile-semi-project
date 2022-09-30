/* 가입하기 버튼 클릭 시에 입력값이 없으면 알림창 띄우는 기능 & form태그의 제출 기능(post방식)  */

function login_check() {
	//아이디 입력 확인
	var userid = document.input.userid.value; 
	if(userid =="") {
		alert("아이디를 입력하세요."); 
		document.input.userid.focus(); 
		return; 
	}
	
	//비밀번호 입력 확인
	var passwd = document.input.passwd.value;
	if(passwd=="") {
		alert("비밀번호를 입력하세요.");
		document.input.passwd.focus();
		return; 
	}
	document.input.submit();
}