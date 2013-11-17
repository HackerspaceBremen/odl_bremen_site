var error = "error";

function validateSimpleText(text){
	var result = true;
	if(text.length==0){
		result = false;
	}
	return result;
}

function validateEmail(email){
	var result = validateSimpleText(email);
	if(result==true){
		// TODO validate email
	}
	return result;
}

function showError(element, errorElement){
	element.addClass(error);
	errorElement.addClass(error);
}

function removeError(element, errorElement){
	element.removeClass(error);
	errorElement.removeClass(error);
}