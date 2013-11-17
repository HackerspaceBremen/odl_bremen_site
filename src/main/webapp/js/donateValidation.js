function validateDonateForm(){
	
	var result = true;
	
	var fullNameElement = $("#full_name");
	var fullNameErrorElement = $("#full_name_error");
	var emailElement = $("#email");
	var emailErrorElement = $("#email_error");
	var deviceElement = $("#device");
	var deviceErrorElement = $("#device_error");
	
	removeError(fullNameElement, fullNameErrorElement);
	removeError(emailElement, emailErrorElement);
	removeError(deviceElement, deviceErrorElement);
	
	
	if(!validateSimpleText(fullNameElement.val())){
		showError(fullNameElement, fullNameErrorElement);
		result = false;
	}
	
	if(!validateEmail(emailElement.val())){
		showError(emailElement, emailErrorElement);
		result = false;
	}
	if(!validateSimpleText(deviceElement.val())){
		showError(deviceElement, deviceErrorElement);
		result = false;
	}
	// more information doesn't need to be given
	return result;
}