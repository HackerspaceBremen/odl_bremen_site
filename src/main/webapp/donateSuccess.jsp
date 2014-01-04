<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Gerätspende erfolgreich</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-8 columns">
				<p>
				<strong>Vielen Dank für deine Gerätespende!</strong>
				<br/><br/>
				Deine Anfrage "Gerätespende" mit der ID #<%=request.getParameter("donationId")%> 
				wurde erfolgreich vermittelt. Wir werden deine Anfrage 
				schnellstmöglich beantworten. Wenn du Fragen hast, antworte bitte direkt auf die E-mail
				oder nutze unser <a href="/contact">Kontaktformular</a>!
				<br/>
				Vielen Dank, dass du das Open Device Lab Bremen mit deiner Spende unterstützt!
				<br/>
				<br/>
				Dein ODL Bremen Team
				</p>
			</div>
		</div>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
