function nameCheck(){
	var name = $.trim($('#input_name').val());
	
	var regEmpty = /\s/g;
	var regNum = /[~0-9]/g;
	
	if(name == '' || name.length == 0){
		$('.err_msg').eq(0).css('display', 'block')
						   .css('color','tomato')
						   .text('필수정보 입니다.');
		return false;
	} else if(regNum.test(name)){
		$('.err_msg').eq(0).css('display', 'block')
						   .css('color','tomato')
						   .text('문자만 입력해주세요.');
		return false;
	} else if(name.match(regEmpty)){
		$('.err_msg').eq(0).css('display', 'block')
						   .css('color','tomato')
	   					   .text('공백은 입력할 수 없습니다.');
		return false;
	} else if(name.length > 4 || name.length < 2){
		$('.err_msg').eq(0).css('display', 'block')
						   .css('color','tomato')
						   .text('2~4글자 이하로 입력해주세요.');
		return false;
	} else{
		$('.err_msg').eq(0).css('display', 'block')
						   .css('color','mediumseagreen')
						   .text('사용가능한 이름입니다.');
		return true;
	}

}


function ageCheck(){
	var age = $.trim($('#input_age').val());
	
	if(age == '' || age.length == 0){
		$('.err_msg').eq(1).css('display', 'block')
						   .css('color','tomato')
						   .text('필수정보 입니다.');
		return false;
	} else if(isNaN(age)){
		$('.err_msg').eq(1).css('display', 'block')
						   .css('color','tomato')
		 				   .text('숫자만 입력해주세요.');
		return false;
	} else if(age > 99 || age < 1){
		$('.err_msg').eq(1).css('display', 'block')
		 			       .css('color','tomato')
							   .text('1~99세 까지만 입력해주세요.');
		return false;
	} else {
		$('.err_msg').eq(1).css('display', 'block')
		     			       .css('color','mediumseagreen')
						   .text('가입가능한 나이입니다.');
		return true;
	}
}


function majorCheck(){
	var major = $.trim($('#input_major').val());
	
	var regEmpty = /\s/g;
	var regNum = /[~0-9]/g;
	
	if(major.length == 0){
		$('.err_msg').eq(2).css('display', 'none');
		return true;
	} else if(regNum.test(major)){
		$('.err_msg').eq(2).css('display', 'block')
						   .css('color','tomato')
						   .text('문자만 입력해주세요.');
		return false;
	} else if(major.match(regEmpty)){
		$('.err_msg').eq(2).css('display', 'block')
						   .css('color','tomato')
	   					   .text('공백은 입력할 수 없습니다.');
		return false;
	} else {
		$('.err_msg').eq(2).css('display', 'block')
						   .css('color','mediumseagreen')
						   .text('올바르게 입력된 전공입니다.');
		return true;
	}
}

function phoneCheck(){
	var phone = $.trim($('#input_phone').val());
	
	var phoneReg = RegExp(/^[0-9]{8,11}$/);
	
	if(phone == '' || phone.length == 0){
		$('.err_msg').eq(3).css('display', 'block')
						   .css('color','tomato')
						   .text('필수정보 입니다.');
		return false;
	} else if(isNaN(phone)){
		$('.err_msg').eq(3).css('display', 'block')
						   .css('color','tomato')
						   .text('숫자만 입력해주세요.');
		return false;
	} else if(!phoneReg.test(phone)){
		$('.err_msg').eq(3).css('display', 'block')
						   .css('color','tomato')
	   					   .text('올바른 값을 입력해주세요.');
		return false;
	} else {
		$('.err_msg').eq(3).css('display', 'block')
						   .css('color','mediumseagreen')
						   .text('등록가능한 번호입니다.');
		return true;
	}
}