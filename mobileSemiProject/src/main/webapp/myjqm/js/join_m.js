/* 가입하기 버튼 클릭 시에 입력값이 없으면 알림창 띄우는 기능 & form태그의 제출 기능(post방식)  */

function join_check() {
	//아이디 입력 확인
	var userid = document.input.userid.value; 
	if(userid =="") {
		alert("아이디는 필수 입력 사항입니다."); 
		document.input.userid.focus(); 
		return; 
	}
	//아이디 조건
	var exp1 = /^[A-Za-z0-9]{4,10}$/;
	console.log("test: " + exp1.test(userid));
	if(!exp1.test(userid)) {
		alert("아이디는 영문자, 숫자를 사용해서 4~10자리로 입력하세요.");
		document.input.userid.focus();
		return;
	}
	
	//비밀번호 입력 확인
	var pw1 = document.input.pw1.value;
	if(pw1=="") {
		alert("비밀번호는 필수 입력 사항입니다.");
		document.input.pw1.focus();
		return; 
	}
	
	//비밀번호 조건 (영문 소문자, 숫자, 특수기호(~!@#$%^*)를 모두 사용해서 8~12자리로 입력)
	var exp2 = /^(?=.*[a-z])(?=.*[~!@#$%^*])(?=.*\d).{8,12}$/;
	console.log("match : " + pw1.match(exp2));
	
	if(!exp2.test(pw1)) {
		alert("비밀번호는 영문 소문자, 숫자, 특수기호(~!@#$%^*)를 모두 사용해서 8~12자리로 입력하세요.");
		document.input.pw1.focus();
		return;
	}
	
	//이름 입력 확인
	var name = document.input.name.value;
	if(name=="") {
		alert("이름은 필수 입력 사항입니다.");
		document.input.name.focus();
		return;
	}
	
	//이름 조건
	var exp3 = /^[가-힣]+$/;
	if(!exp3.test(name)) {
		alert("이름은 한글만 입력하세요.");
		document.input.name.focus();
		return;
	}
	
	//생년월일 입력 확인
	var birth = document.input.birth.value;
	if(birth=="") {
		alert("생년월일은 필수 입력 사항입니다.");
		document.input.birth.focus();
		return;
	}
	
	
	//전화번호 입력 확인
	var tel = document.input.tel.value; 
	if(tel=="") {
		alert("전화번호는 필수 입력 사항입니다.");
		document.input.tel.focus();
		return;
	}
	
	//전화번호 조건
	var exp4 = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/;
	if(!exp4.test(tel)) {
		alert("전화번호 형식이 맞지 않습니다. ex) 010-123(1234)-5678");
		document.input.tel.focus();
		return;
	}
	
	//인증번호 입력 확인
	var tel = document.input.tel.value; 
	if(tel=="") {
		alert("인증번호는 필수 입력 사항입니다.");
		document.input.tel.focus();
		return;
	}
	
	//이메일 입력 확인
	var email = document.input.email.value; 
	if(email=="") {
		alert("이메일은 필수 입력 사항입니다.");
		document.input.email.focus();
		return;
	}
	
	//이메일 조건
	var exp5 = /^[a-z0-9]{2,}@[a-z0-9]{2,}\.[a-z]{2,}$/;
	if(!exp5.test(email)) {
		alert("이메일 형식이 맞지 않습니다. ex) abc@gmail.com");
		document.input.email.focus();
		return;
	}
	
	//기본주소 입력 확인
		var address1 = document.input.address1.value; 
	if(address1=="") {
		alert("기본주소는 필수 입력 사항입니다.");
		document.input.address1.focus();
		return;
	}
	
	//쿠폰 입력 확인
	var coupon = document.input.coupon.value;
	if(coupon=="") {
		alert("음료 무료 쿠폰은 필수 선택 사항입니다.");
		document.input.coupon.focus();
		return;
	}
	alert("가입을 환영합니다.");
 	document.input.submit();
	}