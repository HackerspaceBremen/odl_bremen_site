function validateRegistrateForm(){
	
	var result = true;
	
	var fullNameElement = $("#full_name");
	var fullNameErrorElement = $("#full_name_error");
	var emailElement = $("#email");
	var emailErrorElement = $("#email_error");
	var dateElement = $("#date");
	var dateErrorElement = $("#date_error");
	var timeElement = $("#time");
	var timeErrorElement = $("#time_error");
	var deviceElement = $("#device");
	var deviceErrorElement = $("#device_error");
	
	removeError(fullNameElement, fullNameErrorElement);
	removeError(emailElement, emailErrorElement);
	removeError(dateElement, dateErrorElement);
	removeError(timeElement, timeErrorElement);
	removeError(deviceElement, deviceErrorElement);
	
	if(!validateSimpleText(fullNameElement.val())){
		showError(fullNameElement, fullNameErrorElement);
		result = false;
	}
	
	if(!validateEmail(emailElement.val())){
		showError(emailElement, emailErrorElement);
		result = false;
	}
	console.log("Datum: " + dateElement.val());
	console.log("Zeit: " + timeElement.val());
	console.log("Ort: " + $("#locationDropdown").val())
	// TODO dateElement
	// TODO timeElement
	if(!validateSimpleText(deviceElement.val())){
		showError(deviceElement, deviceErrorElement);
		result = false;
	}
	// more information doesn't need to be given
	return false;
}