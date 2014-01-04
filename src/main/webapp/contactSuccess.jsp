<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Kontaktaufnahme erfolgreich</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-8 columns">
				<p>
				<strong>Vielen Dank für deine Kontaktaufnahme!</strong>
				<br/><br/>
				Deine Anfrage mit der ID #<%=request.getParameter("contactId")%> 
				wurde erfolgreich vermittelt. Wir werden deine Anfrage 
				schnellstmöglich beantworten.
				<br/>
				<br/>
				Dein ODL Bremen Team
				</p>
			</div>
		</div>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
