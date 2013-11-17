function validateContactForm(){
	
	var result = true;
	
	var fullNameElement = $("#full_name");
	var fullNameErrorElement = $("#full_name_error");
	var emailElement = $("#email");
	var emailErrorElement = $("#email_error");
	var contactTextElement = $("#contact_text");
	var contactTextErrorElement = $("#contact_text_error");
	
	removeError(fullNameElement, fullNameErrorElement);
	removeError(emailElement, emailErrorElement);
	removeError(contactTextElement, contactTextErrorElement);
	
	
	if(!validateSimpleText(fullNameElement.val())){
		showError(fullNameElement, fullNameErrorElement);
		result = false;
	}
	
	if(!validateEmail(emailElement.val())){
		showError(emailElement, emailErrorElement);
		result = false;
	}
	if(!validateSimpleText(contactTextElement.val())){
		showError(contactTextElement, contactErrorElement);
		result = false;
	}
	return result;
}